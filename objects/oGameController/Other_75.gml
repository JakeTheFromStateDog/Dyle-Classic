//If a gamepad is discovered then set game pad to be it and set it's deadzone
if (async_load[? "event_type"] == "gamepad discovered") {
	gamePad = async_load[? "pad_index"];
	
	gamepad_set_axis_deadzone(gamePad, 0.6);
}