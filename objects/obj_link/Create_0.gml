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