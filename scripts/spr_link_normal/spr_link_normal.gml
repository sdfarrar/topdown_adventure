spr_get_inputs();

var xVel=0;
var yVel=0;

if(key_left){ xVel-=HORIZONTAL_VEL; }
if(key_right){ xVel=+HORIZONTAL_VEL; }
if(key_up){ yVel-=VERTICAL_VEL; }
if(key_down){ yVel+=VERTICAL_VEL; }

hspeed = xVel;
vspeed = yVel;

state = states.walking;