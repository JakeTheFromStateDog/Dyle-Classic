//Create the player at the correct spawn point
for (i = 0; i < instance_number(oRespawnPoint); i++) {
	var point = instance_find(oRespawnPoint, i);
	
	if (point != noone and point.ID == checkpoint) {
		instance_create_layer(point.x, point.y, "Player", oPlayer);
	
		break;
	}
}