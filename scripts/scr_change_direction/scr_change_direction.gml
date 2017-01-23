/// @description Changes direction of an object
/// @param _inst the object
/// @param dir_check direction to check
var _inst = argument0;
var dir_check = argument1;

if(_inst.dir & dir_check == 0){
	_inst.dir = _inst.dir | dir_check;
	_inst.sprite_index = _inst.sprites[dir_check];
	_inst.image_index = 0;
}