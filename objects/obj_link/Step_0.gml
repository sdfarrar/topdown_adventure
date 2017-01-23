switch(state){
	case STATES.normal: scr_link_normal(id); break;
	case STATES.walking: scr_link_walking(id); break;
}

// testing camera stuffs

/// Center on click

// Check if the mouse is clicked. If so, update the click position
if(mouse_check_button_pressed(mb_left)){
	click_x = mouse_x;
	click_y = mouse_y;
}

// Get target view position (top-left) and size. 
// Size is halved so the view will focus around its center
var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;

// The interpolation rate
var rate = 0.15;

// Interpolate the view position to the new, relative position
var new_x = lerp(vpos_x, click_x - vpos_w, rate);
var new_y = lerp(vpos_y, click_y - vpos_h, rate);

// Update the view position
camera_set_view_pos(view_camera[0], new_x, new_y);


/// Zooming

// Move the zoom level baed on mouse scrolling. Clamp the value so stuff doesn't get too silly
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.1, 5);

// Get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

// Set the rate fo interpolation
var rate = 0.2;

// Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

// Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

// Get the shift necessary to re-align the view
var shift_x = camera_get_view_x(view_camera[0]) - (new_w - view_w) * 0.5;
var shift_y = camera_get_view_y(view_camera[0]) - (new_h - view_h) * 0.5;

// UPdate the view position
camera_set_view_pos(view_camera[0], shift_x, shift_y);