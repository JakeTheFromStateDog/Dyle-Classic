//Get drawing location
var drawX = cameraX + (cameraWidth / 3);
var drawY = cameraY + (cameraHeight / 3);

//Define font
draw_set_font(fMainFont);

//Define row and rnak
var row = 0;
var rank = 0;

//Define x and y scale
var xScale = 3;
var yScale = round(xScale * 1.3);

//Loop through slots
for (i = 0; i < saveSlotCount; i++) {
	//Add to rank if needed
	if (i == round(saveSlotCount / 2)) {
		row++;
		rank = 0;
	}
	
	//Draw the image string
	var imageString = "_____\n|_" + string(i) + "_|";
	draw_text_transformed(drawX + (rank * 128), drawY + (row * 200), imageString,
						  xScale, yScale, 0);
					
	//Test for click on the image string
	if (mouseLeftClicked and
		point_in_rectangle(mouse_x, mouse_y, 
						   drawX + (rank * 128), drawY + (row * 200) + 48,
						   drawX + (rank * 128) + (40 * xScale), 
					       drawY + (row * 200) + (40 * yScale))) {
							   
		//Open save files, if it exists, to find out what level we're on
		var fileName = saveFileName + string(i);
		if (i == 0) fileName = saveFileName;
	
		if (file_exists(fileName + ".sav")) {
			var file = file_text_open_read(fileName + ".sav");

			levelOn = file_text_read_real(file);
			file_text_readln(file);
			checkpoint = file_text_read_real(file);

			file_text_close(file);
		}
		
		//Set selected slot
		selectedSlot = i;
		
		//Go to the playing room
		room_goto(levelOn);
	}
			
	//Add to rank
	rank++;
}