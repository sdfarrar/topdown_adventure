#macro DIR_UP		0x1
#macro DIR_DOWN		0x2
#macro DIR_LEFT		0x4
#macro DIR_RIGHT	0x8

enum STATES{
	normal,
	walking,
	running,
	attacking
}


room_goto(rm_overworld);