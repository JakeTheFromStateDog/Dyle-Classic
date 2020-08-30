//Get platforms or spikes
var platforms = ds_list_create();
var num = instance_place_list(x, y, oPlatform, platforms, false);

if (num <= 0) num = instance_place_list(x, y, oMoveableSpikes, platforms, false);

//Make move speed faster if it was a spike
if (place_meeting(x, y, oMoveableSpikes)) moveSpeed = 2;
else moveSpeed = ogMoveSpeed;

//If there are any platforms then loop through then
if (num > 0) for (i = 0; i < num; i++) {
	//Define platform
	var platform = platforms[| i];
		
	//Depending on what angle the mover is move on a different axis
	var ourDir = 0;
	var theirDir = 0;
	
	if (image_angle == 0) {
		ourDir = x;
		theirDir = platform.x;
	} else {
		ourDir = y;
		theirDir = platform.y;
	}
	
	//Depending on what side the platform is on move in that direction
	if (theirDir <= ourDir - (width / 2)) side = true;
	else if (theirDir >= ourDir + (width / 2)) side = false;
	
	if (side) theirDir += moveSpeed; else theirDir -= moveSpeed;
	
	//Set platform axis
	if (image_angle == 0) platform.x = theirDir; else platform.y = theirDir;
}

//Destroy the platforms list
ds_list_destroy(platforms);