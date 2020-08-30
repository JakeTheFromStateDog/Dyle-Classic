function shake_camera(argument0, argument1) {
	//shake_camera(shakePower, shakeTime);
	//Arguments
	var shakePower = argument0;
	var shakeTime = argument1;

	//Shake the camera
	oCameraController.canShake = true;
	oCameraController.setAlarm = false;

	oCameraController.shakePower = shakePower;
	oCameraController.shakeTime = shakeTime;


}
