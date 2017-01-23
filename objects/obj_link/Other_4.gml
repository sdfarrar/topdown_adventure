/// @description setup view

var width = 640;
var height = 480;

// Enable the use of views
view_enabled = true;

// Make view 0 visible
view_set_visible(0, true);

// Set the port bounds of view 0 to 640x480
view_set_wport(0, width);
view_set_hport(0, height);

//Resize and center
window_set_rectangle((display_get_width() - view_wport[0]) * 0.5, (display_get_height() - view_hport[0]) * 0.5, view_wport[0], view_hport[0]);
surface_resize(application_surface,view_wport[0],view_hport[0]);


// Camera creation v2
camera = camera_create();
view_set_camera(0, camera);

// Basic setup
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], width, height);

// Setting up object target information
camera_set_view_target(view_camera[0], obj_link);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], width/2, height/2);	// the "buffer" when the camera should pan with the player.

