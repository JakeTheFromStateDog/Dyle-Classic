//Lerp the backgrounds to create a parallax effect
for (i = 0; i < amount; i++) {
	layer_x(layer_get_id("Background"+string(i + 1)), lerp(0, camera_get_view_x(view_camera[0]), lerpSpeed / (i + 1 * 1.5)));
}