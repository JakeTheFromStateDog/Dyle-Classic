//Delete save file if clicked on
if (mouseLeftClicked and position_meeting(mouse_x, mouse_y, self)) {
	for (i = 0; i < saveSlotCount; i++) {
		var fileName = saveFileName + string(i);
		if (i == 0) fileName = saveFileName;
		file_delete(fileName + ".sav");
	}
	
	//Reset level on
	levelOn = startLevel;
	
	//Reset checkpoint
	checkpoint = 0;
	
	//Play select noise
	audio_play_sound(sndSelect, 90, false);
	audio_sound_gain(sndSelect, gameVolume, 0);
}