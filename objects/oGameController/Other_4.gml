//Reset sound to main menu music if we're in the main menu
if (room == rMain) {
	audio_stop_all();
	
	audio_play_sound(sndMainMenu, 1000, true);
	audio_sound_gain(sndMainMenu, musicVolume, 0);
}

//Create files if needed
if (room == rMain) for (i = 0; i < saveSlotCount; i++) {
	var fileName = saveFileName + string(i);
	if (i == 0) fileName = saveFileName;
	
	if (!file_exists(fileName + ".sav")) {
		show_debug_message("d");
		var file = file_text_open_write(fileName + ".sav");

		file_text_write_real(file, startLevel);
		file_text_writeln(file);
		file_text_write_real(file, 0);

		file_text_close(file);
	}
}