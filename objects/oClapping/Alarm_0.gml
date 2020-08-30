//Play clap noise
var clapNoise = sndClap1;
if (irandom(1) == 0) clapNoise = sndClap2;

audio_play_sound(clapNoise, 90, false);
audio_sound_gain(clapNoise, gameVolume, 0);

//Set alarm to do clap sound
alarm_set(0, image_speed * room_speed * 2);