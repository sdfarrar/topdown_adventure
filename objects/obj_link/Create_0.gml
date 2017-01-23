/// Initialize player

HORIZONTAL_VEL = 2;
VERTICAL_VEL = 2;

state = STATES.normal;
dir = DIR_DOWN;

sprites = [];
sprites[DIR_UP] = spr_link_run_up;
sprites[DIR_DOWN] = spr_link_run_down;
sprites[DIR_LEFT] = spr_link_run_left;
sprites[DIR_RIGHT] = spr_link_run_right;

key_up = false;
key_down = false;
key_left = false;
key_right = false;


/// Camera testing stuff

/// Center on click
click_x = 0;
click_y = 0;

/// Zooming
zoom_level = 1;
// Get the starting view  size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);