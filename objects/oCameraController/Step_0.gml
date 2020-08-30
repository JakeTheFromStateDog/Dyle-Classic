//If the target is a cursor
if (target == oCursor) {
	//Lerp to the cursor
	x = lerp(x, target.x, lerpSpeed / 7);
	y = lerp(y, target.y, lerpSpeed / 7);
} else if (instance_exists(target)) {
	//Smoothly move to the target assuming their the player
	x = lerp(x, target.x, lerpSpeed);
	y = lerp(y, target.y, lerpSpeed * 1.5);
}

//Test if we can shake
if (canShake) {
	//Test if the alarm is not already set
	if (!setAlarm) {
		//Set the alarm and set alarm to true because we have set the alarm
		alarm_set(0,shakeTime);
		setAlarm = true;
	}
	
	//Thrash in agony for a while
	x += random_range(-shakePower,shakePower);
	y += random_range(-shakePower,shakePower);
}

//Zoom
camera_set_view_size(view_camera[0], cameraWidth / zoom, cameraHeight / zoom);