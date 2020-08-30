//Rotate
image_angle += 2;

//Create particles
part_particles_create(particleS, x, y, endpoint, 3);

//Test if we're touching the player and if so go to the room we're supposed to go to
if (place_meeting(x, y, oPlayer)) room_goto(roomGoTo);