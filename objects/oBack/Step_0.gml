//On left click go to back to the main room
if (mouseLeftClicked and position_meeting(mouse_x, mouse_y, self)) {
	//Play select noise
	audio_play_sound(sndSelect, 90, false);
	audio_sound_gain(sndSelect, gameVolume, 0);
	
	room_goto(rMain);
}