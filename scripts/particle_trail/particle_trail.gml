function particle_trail() {
	//particle_trail();
	//Create the trail particle
	part_particles_create(particleS, (x - spriteWidthHalf) + irandom(spriteWidthHalf * 2), y + (sprite_get_height(sprite_index) / 2), trail, 1);


}
