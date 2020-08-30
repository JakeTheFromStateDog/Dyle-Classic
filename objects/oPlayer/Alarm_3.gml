//Move camera to self if it's the beginning of the room
if (instance_exists(oCameraController) and justStartedRoom) {
	oCameraController.x = x;
	oCameraController.y = y;
}