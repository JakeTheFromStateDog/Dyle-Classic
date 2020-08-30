//Define respawn ID
respawnID = 0;

//Define music track
musicTrack = sndMainMenu;

//Set level on
if (levelOn != room) {
	levelOn = room;
	checkpoint = respawnID;
}

//Start alarm 0 to spawn the player
alarm_set(0, 1);