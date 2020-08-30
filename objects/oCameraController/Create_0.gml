//Define target
target = oPlayer;

//Define shake variables
canShake = false;
setAlarm = false;

shakePower = 5;
shakeTime = 10;

//Define lerp speed
lerpSpeed = 0.06;

//Define zoom
zoom = 1;

//Define camera width and height and x and y
cameraWidth = 960;
cameraHeight = 540;

cameraX = 0;
cameraY = 0;

//Create camera
view_camera[0] = camera_create_view(cameraX, cameraY, cameraWidth, cameraHeight, 0, oCameraController, -1, -1, cameraWidth / 2, cameraHeight / 2);

view_set_visible(view_camera[0], true);

//Resize the surface and window
surface_resize(application_surface, cameraWidth, cameraHeight);
window_set_size(cameraWidth * 1.5, cameraHeight * 1.5);