//Wait a a frame to move the camera
alarm_set(3, 1);

//Define just started room
justStartedRoom = false;

//Define move variables
moveX = 0;
moveY = 0;

landingSpeed = 0;

moveSpeed = 3.5;
ogMoveSpeed = moveSpeed;

//Define boost power
boostPower = 5.2;

//Define jump variables
jumpPower = 5;

//Define sound variables
canPlayWalkSound = true;
canPlaySprintSound = true;

//Define boosted variable
boosted = 0;

//Define sprite's half width and half height
spriteWidthHalf = sprite_get_width(sprite_index) / 2;
spriteHeightHalf = sprite_get_height(sprite_index) / 2;

//Define landed
landed = true;

//Declare on ground and on wall
onGround = false;
onWall = false;