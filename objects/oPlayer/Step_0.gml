/*Use the key inputs and walkspeed to determine what
direction we're going in and how fast*/
moveX = (keyRight - keyLeft) * moveSpeed;

//Add gravity to move y to move the player downwards to simulate real life
moveY += grv;

//Declare on wall depending on if there is a wall or platform in front or behind us
onWall = false;
if (place_meeting(x + 1, y, oWall) or place_meeting(x + 1, y, oPlatform) or
	place_meeting(x - 1, y, oWall) or place_meeting(x - 1, y, oPlatform)) onWall = true;

//Declare on ground depending on if there is ground under or above us
onGround = false;
if (place_meeting(x, y + 1, oWall)) onGround = true;

//If we're holding the sprint key show sprint particles
if (moveX != 0 and canPlayWalkSound and onGround) {
	//Define show particles depending on if we're on a wall and falling or we're on the floor and moving
	var showParticles = false;
	if (moveX != 0 and place_meeting(x, y + 1, oWall)) showParticles = true;
	else if (sign(moveY) == 1 and onWall) showParticles = true;

	//If show particles is true then show the particles
	if (showParticles) {
		if (irandom(1) == 0) particle_trail();
		
		//Play walk sound effects if we can play it and are on the ground
		if (canPlaySprintSound and onGround) {
			play_walk_sound();
			
			//Set can play sprint sound to false and wait a few frames to set it back to true
			canPlaySprintSound = false;
			alarm_set(1, 10);
		}
	}
}

//Set landing speed
if (moveY > 1) landingSpeed = moveY;

//Move down faster if holding down and create particles
if (keyDown and !onGround) {
	moveY += 0.5;
	particle_trail();
}

//If on the ground, holding down, and not landed then do landing effects
if (keyDown and onGround and !landed) {
	shake_camera(round(landingSpeed / 2 * 1.4), round(landingSpeed / 2 * 1.3));
	part_particles_create(particleS, x - spriteWidthHalf, y + (sprite_get_height(image_index) / 2), land, round(landingSpeed / 2 * 1.3));
	
	//Play land sound effect
	audio_play_sound(sndLand, 90, false);
	audio_sound_gain(sndLand, gameVolume + landingSpeed * 0.012, 0);
}

//Set landed depending on if we're on the ground or not.
if (!onGround) landed = false; else landed = true;

//Set boosted to 0 if on the ground
if (onGround) boosted = 0;

//Test for the jump key
if (keyJumpPressed) {
	//Jump if on the ground or a wall
	if (onGround or onWall) {
		//Play jump sound effect
		audio_play_sound(sndJump, 10, false);
		audio_sound_gain(sndJump, gameVolume, 0);
		
		moveY = -jumpPower;
	}
}	

//Boost if we can boost
if (keyBoost and boosted < 2) {
	//Add to boosted
	boosted++;
		
	//Play boost sound effect
	audio_play_sound(sndBoost, 20, false);
	audio_sound_gain(sndBoost, gameVolume * 2.5, 0);
		
	//Set move speed and set and alarm to reset move speed
	moveSpeed = boostPower;
	alarm_set(0,45);
		
	//Jump
	moveY = -jumpPower;
		
	//Shake the camera
	shake_camera(7, 18);
		
	//Set particle direction depending on what direction we're moving in
	var dir = [0,0];
	if (sign(moveX) == 1) dir = [90, 270]; else dir = [-90, 90];
		
	part_type_direction(boost, dir[0], dir[1], 0, 0);
		
	//Create the boost particle
	part_particles_create(particleS, x - spriteWidthHalf, y + (sprite_get_height(image_index) / 2), boost, 10);
}

/*Collision
Horizontal
Test if there is a wall in front of us*/
if (place_meeting(x + moveX, y, oWall)) {
	//While we're not touching a wall move a little towards that wall	
	while (!place_meeting(x + sign(moveX), y, oWall)) x += sign(moveX);
	
	//Reset move x
	moveX = 0;
}

//Move on the x axis depending on move x
x += moveX;

/*Vertical
Test if there is a wall under or above us depending on what vertical
direction we're going*/
if (place_meeting(x, y + moveY, oWall)) {
	//While we're not touching a wall move a little towards that wall	
	while (!place_meeting(x, y + sign(moveY), oWall)) y += sign(moveY);
	
	//Reset move y
	moveY = 0;
}

//Move on the y axis depending on move y
y += moveY;

//Test for collision with spikes
if (place_meeting(x, y, oSpikes) or place_meeting(x, y, oMoveableSpikes)) destroy_player();

//Test if we are on a respawn point
var point = instance_place(x, y, oRespawnPoint);
if (point != noone) {
	//Set the respawn ID to be the selected respawn point so we can respawn there
	checkpoint = point.ID;
	
	//Save the game
	save_game(selectedSlot);
}