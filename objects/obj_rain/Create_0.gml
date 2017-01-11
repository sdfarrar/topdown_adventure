/// @description Rain System
partRain_sys = part_system_create_layer("Effects_Overlay", false);

// Rain Particle
partRain = part_type_create();
part_type_shape(partRain, pt_shape_line);
part_type_size(partRain, 0.05, 0.15, 0, 0);
part_type_color2(partRain, c_teal, c_white);
part_type_alpha2(partRain, 0.5, 0.1);
part_type_gravity(partRain, 0.1, 250);
part_type_speed(partRain, 1.5, 1.5, 0, 0);
part_type_direction(partRain, 240, 260, 0, 1);
part_type_orientation(partRain, 265, 265, 0, 0, 0);
part_type_life(partRain, 50, 80);

// Puddle Particle
partPuddle = part_type_create();
part_type_shape(partPuddle, pt_shape_circle);
part_type_size(partPuddle, 0.5, 0.8, 0.01, 0);
part_type_scale(partPuddle, 0.5, 0.1);
part_type_color1(partPuddle, c_silver);
part_type_alpha2(partPuddle, 0.4, 0);
part_type_speed(partPuddle, 0, 0, 0, 0);
part_type_direction(partPuddle, 0, 0, 0, 0);
part_type_gravity(partPuddle, 0, 270);
part_type_life(partPuddle, 50, 60);

//Set Sequence
part_type_death(partRain, 1, partPuddle);

// Create Emitter
partRain_emit = part_emitter_create(partRain_sys);
part_emitter_region(partRain_sys, partRain_emit, view_xport[0]-200, view_wport[0], view_yport[0]-100, view_yport[0]+200, ps_shape_line, ps_distr_linear);
part_emitter_stream(partRain_sys, partRain_emit, partRain, 5);

// Advance System
repeat(room_speed*3){
	part_system_update(partRain_sys);
}