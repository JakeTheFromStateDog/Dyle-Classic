//Play music track if it's not playing
if (!audio_is_playing(musicTrack)) {
	audio_stop_all();
	
	audio_play_sound(musicTrack, 1000, true);
	audio_sound_gain(musicTrack, musicVolume, 0);
}