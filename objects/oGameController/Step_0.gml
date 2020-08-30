/*Set keys to be true or false depending on if they're
being pressed or not*/
keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left) or 
		  gamepad_axis_value(gamePad, gp_axislh) < 0 or gamepad_button_check(gamePad, gp_padl);
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right) or 
		  gamepad_axis_value(gamePad, gp_axislh) > 0 or gamepad_button_check(gamePad, gp_padr);
keyDown = keyboard_check(ord("S")) or keyboard_check(vk_down) or 
		  gamepad_axis_value(gamePad, gp_axislv) > 0 or gamepad_button_check(gamePad, gp_padd);

keyBoost = keyboard_check_pressed(vk_shift) or
			gamepad_button_check_pressed(gamePad, gp_face3) or gamepad_button_check_pressed(gamePad, gp_face4) or
			gamepad_button_check_pressed(gamePad, gp_shoulderrb);
			
keyJumpPressed = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) or 
				 keyboard_check_pressed(ord("W")) or
				 gamepad_button_check_pressed(gamePad, gp_face1) or gamepad_button_check_pressed(gamePad, gp_face2);

keyEscapePressed = keyboard_check_pressed(vk_escape) or
				   gamepad_button_check_pressed(gamePad, gp_start);

/*Set mouse buttons to be true or false depending on if they're
being pressed or not*/
mouseLeftClicked = mouse_check_button_pressed(mb_left);

//Go back to main menu on escape press if we're not already there
if (keyEscapePressed and room != rMain) {
	//Set level on so we can come back to this level
	levelOn = room;
	
	room_goto(rMain);
}

//Turn on and off fullscreen using f11
if (keyboard_check_pressed(vk_f11)) fullscreen = !fullscreen;

//Go fullescreen if fullscreen is true
window_set_fullscreen(fullscreen);