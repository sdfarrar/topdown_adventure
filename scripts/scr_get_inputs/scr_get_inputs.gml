/// scr_get_inputs ( _inst )
var _inst = argument0;

var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));

var dir = _inst.dir; // preserve old dir if needed
var spriteIndex = _inst.sprite_index;
var imageIndex = _inst.image_index;

if(key_left && !key_right){
	scr_change_direction(_inst, DIR_LEFT);
	//if(_inst.dir & DIR_DOWN == 0){
	//	_inst.dir = _inst.dir | DIR_LEFT;
	//	_inst.sprite_index = _inst.sprites[_inst.dir];
	//	_inst.image_index = 0;
	//}
}else if(!key_down){
	_inst.dir = _inst.dir & ~DIR_LEFT;
}
if(key_right && !key_left){ 
	scr_change_direction(_inst, DIR_RIGHT);
	//if(_inst.dir & DIR_DOWN == 0){
	//	_inst.dir = _inst.dir | DIR_RIGHT;
	//	_inst.sprite_index = _inst.sprites[_inst.dir];
	//	_inst.image_index = 0;
	//}
}else if(!key_down){
	_inst.dir = _inst.dir & ~DIR_RIGHT;
}
if(key_up && !key_down){ 
	scr_change_direction(_inst, DIR_UP);
	//if(_inst.dir & DIR_DOWN == 0){
	//	_inst.dir = _inst.dir | DIR_UP;
	//	_inst.sprite_index = _inst.sprites[_inst.dir];
	//	_inst.image_index = 0;
	//}
}else if(!key_down){
	_inst.dir = _inst.dir & ~DIR_UP;
}
if(key_down && !key_up){ 
	scr_change_direction(_inst, DIR_DOWN);
	//if(_inst.dir & DIR_DOWN == 0){
	//	_inst.dir = _inst.dir | DIR_DOWN;
	//	_inst.sprite_index = _inst.sprites[_inst.dir];
	//	_inst.image_index = 0;
	//}
}else if(!key_down){
	_inst.dir = _inst.dir & ~DIR_DOWN;
}

if(key_left || key_right || key_up || key_down){
	_inst.image_speed = 1.0;
}

show_debug_message("=================")
show_debug_message("left: " + string(key_left))
show_debug_message("right: " + string(key_right))
show_debug_message("up: " + string(key_up))
show_debug_message("down: " + string(key_down))
show_debug_message("dir: " + string(argument0.dir));

_inst.key_left = key_left;
_inst.key_right = key_right;
_inst.key_up = key_up;
_inst.key_down = key_down;