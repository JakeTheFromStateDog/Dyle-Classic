//Define the particle system
globalvar particleS;
particleS = part_system_create_layer("Particles", true);

/*Define particles
Movement particles*/
globalvar trail; //Trail
trail = part_type_create();

part_type_sprite(trail, sMovement, false, false, false);
part_type_orientation(trail, 0, 0, 0, 5, true);
part_type_direction(trail, 15, 344, 0, 20);
part_type_speed(trail, 1, 3, 0, 0);
part_type_life(trail, 15, 40);


globalvar boost; //Boost
boost = part_type_create();

part_type_sprite(boost, sMovement, false, false, false);
part_type_color_rgb(boost, 255, 255, 85, 85, 85, 85);
part_type_orientation(boost, 0, 0, 0, 0, true);
part_type_speed(boost, 5, 10, 0, 0);
part_type_life(boost, 45, 65);


globalvar land; //Land
land = part_type_create();

part_type_sprite(land, sMovement, false, false, false);
part_type_color_rgb(land, 255, 255, 255, 255, 85, 85);
part_type_orientation(land, 0, 0, 0, 5, true);
part_type_direction(land, 0, 180, 0, 10);
part_type_speed(land, 5, 10, 0, 0);
part_type_life(land, 45, 65);


//Misc particles
globalvar death; //Death
death = part_type_create();

part_type_sprite(death, sLife, false, false, false);
part_type_color_rgb(death, 170, 170, 0, 0, 0, 0);
part_type_orientation(death, 0, 360, 0, 20, false);
part_type_direction(death, 0, 360, 0, 20);
part_type_speed(death, 2, 14, 0, 0);
part_type_life(death, 75, 100);

globalvar endpoint; //Endpoint
endpoint = part_type_create();

part_type_sprite(endpoint, sPEndpoint, false, false, false);
part_type_direction(endpoint, 0, 360, -0.1, 20);
part_type_speed(endpoint, 5, 10, -0.1, 0.75);
part_type_life(endpoint, 20, 35);


globalvar waterfall; //Waterfall
waterfall = part_type_create();

part_type_sprite(waterfall, sEffect, false, false, false);
part_type_color_rgb(waterfall, 85, 85, 85, 85, 255, 255);
part_type_alpha1(waterfall, 0.3);
part_type_orientation(waterfall, 270, 270, 0, 5, false);
part_type_direction(waterfall, 270, 270, 0, 20);
part_type_speed(waterfall, 1, 2, 0, 0);
part_type_life(waterfall, 200, 400);