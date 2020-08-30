function save_game(argument0) {
	//save_game(slot);
	//Arguments
	var slot = argument0;

	//Get file name
	var fileName = saveFileName + string(slot);
	if (slot == 0) fileName = saveFileName;

	//Save game data to file
	var file = file_text_open_write(fileName + ".sav");

	file_text_write_real(file, levelOn);
	file_text_writeln(file);
	file_text_write_real(file, checkpoint);

	file_text_close(file);


}
