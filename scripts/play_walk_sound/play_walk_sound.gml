function play_walk_sound() {
	//play_walk_sound();
	var walkEffects = [sndWalk1, sndWalk2, sndWalk3];
	var soundEffect = walkEffects[irandom(array_length_1d(walkEffects) - 1)];
	
	audio_play_sound(soundEffect, 8, false);
	audio_sound_gain(soundEffect, gameVolume, 0);
}
