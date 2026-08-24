TollFreePhoneScript1:
	farwritetext TollFreeIntroText
	promptbutton
	playmusic MUSIC_POKE_FLUTE_CHANNEL
	farwritetext TollFreeImportantText
	promptbutton
	playmusic MUSIC_POKE_FLUTE_CHANNEL
	farwritetext TollFreeImportantText
	promptbutton
	farwritetext TollFreeGoodbyeText
	promptbutton
	special RestartMapMusic
	end

TollFreePhoneScript2:
	sjump TollFreePhoneScript1
