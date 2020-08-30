//On left click or jump key pressed go to the first room
var moveToNextRoom = false;
if (mouseLeftClicked and position_meeting(mouse_x, mouse_y, self)) moveToNextRoom = true;
if (keyJumpPressed and !keyboard_check_pressed(ord("W")) and
	!keyboard_check_pressed(vk_up)) moveToNextRoom = true;

if (moveToNextRoom) {
	//Stop the music when leaving the room
	audio_stop_all();
	
	//Play select noise
	audio_play_sound(sndSelect, 90, false);
	audio_sound_gain(sndSelect, gameVolume, 0);
	
	room_goto(rSaveSelection); //levelOn
}

//Leave game on escape press
if (keyEscapePressed) game_end();
