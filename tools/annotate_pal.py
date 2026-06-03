#!/usr/bin/env python3
"""
annotate_pal.py — Adds hex code comments next to RGB lines in .pal files.

Walks one or more directories looking for .pal files, finds lines containing
`RGB X, Y, Z` patterns, and appends a `; #RRGGBB` hex annotation. Existing
annotations are updated in place if values change.

Usage:
    python3 annotate_pal.py [path ...]

If no paths are given, defaults to the current directory and recurses.

Conversion: GBC values (0-31 per channel) are converted to 8-bit via x8 —
the convention used by pokecrystal and other RGBDS projects. This gives a
max channel value of 248 rather than 255, matching how the engine renders.

Idempotent: running the script repeatedly on the same files only changes
lines whose computed hex differs from what's already there.
"""

import os
import re
import sys
from pathlib import Path

# Regex matches `RGB X, Y, Z` with various spacing.
# Captures the three numeric values, plus any existing trailing content.
# Pattern explanation:
#   ^(\s*)         leading whitespace (preserved)
#   (RGB)\s+       the RGB keyword (case-insensitive via re.IGNORECASE flag)
#   (\d+)\s*,\s*   first value plus comma
#   (\d+)\s*,\s*   second value plus comma
#   (\d+)          third value
#   (\s*)          trailing whitespace before any comment
#   (;.*)?         optional existing comment (everything from `;` onward)
#   $              end of line
RGB_LINE_RE = re.compile(
    r'^(\s*)(RGB)\s+(\d+)\s*,\s*(\d+)\s*,\s*(\d+)(\s*)(;.*)?$',
    re.IGNORECASE
)

# Regex for detecting whether an existing comment already contains a hex code
# of the form #RRGGBB. Used so we replace stale hex annotations rather than
# appending duplicates.
EXISTING_HEX_RE = re.compile(r'#[0-9A-Fa-f]{6}\b')


def gbc_to_hex(r: int, g: int, b: int) -> str:
    """Convert GBC (0-31) channels to 8-bit hex via the standard x8 method."""
    return '#{:02X}{:02X}{:02X}'.format(r * 8, g * 8, b * 8)


def is_valid_gbc(value: int) -> bool:
    """A GBC channel value is valid if it's between 0 and 31 inclusive."""
    return 0 <= value <= 31


def process_line(line: str) -> str:
    """
    Process a single line. Returns the line with hex annotation added or
    updated. Returns the original line unchanged if it doesn't match the
    RGB pattern.
    """
    # Strip trailing newline for processing; we'll re-add it before returning.
    has_newline = line.endswith('\n')
    text = line.rstrip('\n').rstrip('\r')

    m = RGB_LINE_RE.match(text)
    if not m:
        # Not an RGB line. Return unchanged.
        return line

    indent, _rgb_kw, r_str, g_str, b_str, _trailing_ws, existing_comment = m.groups()
    r, g, b = int(r_str), int(g_str), int(b_str)

    # Out-of-range values get a different annotation flagging the problem.
    # This is non-destructive: we still preserve the line and note the issue.
    if not (is_valid_gbc(r) and is_valid_gbc(g) and is_valid_gbc(b)):
        new_annotation = '; INVALID (channel out of 0-31 range)'
    else:
        new_annotation = f'; {gbc_to_hex(r, g, b)}'

    # Reconstruct the RGB portion with consistent formatting.
    # We zero-pad each channel to 2 digits, matching the pokecrystal style.
    # If you'd rather preserve the original spacing, change this to use the
    # original strings — but consistency is generally desirable.
    rgb_portion = f'RGB {r:02d}, {g:02d}, {b:02d}'

    if existing_comment is None:
        # No existing comment. Add our annotation.
        return indent + rgb_portion + '\t' + new_annotation + ('\n' if has_newline else '')

    # There's an existing comment. We need to decide whether to:
    #   a) Replace its hex code if it has one (assume it's our annotation, refresh it)
    #   b) Keep the existing comment as-is and append a hex annotation
    #
    # Heuristic: if the existing comment contains a #RRGGBB pattern, we treat
    # it as our previously-added annotation and replace just that part,
    # preserving any other text the user added.
    #
    # If the comment exists but has no hex code, we leave the comment alone
    # (it's probably a human note like "; red shade") rather than risk mangling it.

    if EXISTING_HEX_RE.search(existing_comment):
        new_hex = gbc_to_hex(r, g, b) if (is_valid_gbc(r) and is_valid_gbc(g) and is_valid_gbc(b)) else 'INVALID'
        updated_comment = EXISTING_HEX_RE.sub(new_hex if new_hex != 'INVALID' else 'INVALID', existing_comment)
        return indent + rgb_portion + '\t' + updated_comment + ('\n' if has_newline else '')
    else:
        # Comment exists but has no hex code. Leave it alone — don't add
        # redundant annotation that would clutter the file.
        return indent + rgb_portion + '\t' + existing_comment + ('\n' if has_newline else '')


def process_file(path: Path) -> bool:
    """
    Process a single .pal file. Returns True if the file was modified.
    Reads, processes line-by-line, writes back only if anything changed.
    """
    try:
        original = path.read_text(encoding='utf-8')
    except UnicodeDecodeError:
        # Some .pal files might use different encodings; try latin-1 as fallback.
        original = path.read_text(encoding='latin-1')

    new_lines = []
    for line in original.splitlines(keepends=True):
        new_lines.append(process_line(line))

    new_text = ''.join(new_lines)

    if new_text != original:
        path.write_text(new_text, encoding='utf-8')
        return True
    return False


def find_pal_files(roots):
    """Yields every .pal file under each root path, recursively."""
    for root in roots:
        root_path = Path(root)
        if not root_path.exists():
            print(f'WARN: {root} does not exist, skipping', file=sys.stderr)
            continue
        if root_path.is_file() and root_path.suffix.lower() == '.pal':
            yield root_path
        else:
            yield from root_path.rglob('*.pal')


def main():
    # Default to current directory if no arguments given.
    roots = sys.argv[1:] if len(sys.argv) > 1 else ['.']

    modified_count = 0
    total_count = 0

    for pal_path in find_pal_files(roots):
        total_count += 1
        try:
            if process_file(pal_path):
                modified_count += 1
                print(f'updated: {pal_path}')
        except Exception as e:
            print(f'ERROR processing {pal_path}: {e}', file=sys.stderr)

    if total_count == 0:
        print('No .pal files found.')
    else:
        print(f'Processed {total_count} files, modified {modified_count}.')


if __name__ == '__main__':
    main()
