/// scr_link_normal ( _inst )

scr_get_inputs(argument0);

var dx=0;
var dy=0;

if(key_left && !key_right){ dx-=HORIZONTAL_VEL; }
if(key_right && !key_left){ dx=+HORIZONTAL_VEL; }
if(key_up && !key_down){ dy-=VERTICAL_VEL; }
if(key_down && !key_up){ dy+=VERTICAL_VEL; }

hspeed = dx;
vspeed = dy;

if(hspeed!=0 || vspeed!=0){
	state = STATES.walking;
}else{
	image_index = 0;
	image_speed = 0;
}