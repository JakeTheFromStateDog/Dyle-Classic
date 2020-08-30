function destroy_player() {
	//destroy_player();
	//Create death paricles
	part_particles_create(particleS, oPlayer.x, oPlayer.y, death, 64);
	
	//Play death sound effect
	audio_play_sound(sndDeath, 100, false);
	audio_sound_gain(sndDeath, gameVolume * 3.3, 0);
	
	//Set an alarm to respawn the player
	with (oLevelController) alarm_set(0,respawnTime);
	
	//Shake the camera
	shake_camera(10, respawnTime);
	
	//Destroy the player
	instance_destroy(oPlayer);


}
