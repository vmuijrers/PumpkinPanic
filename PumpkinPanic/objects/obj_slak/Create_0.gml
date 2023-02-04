/// @description Insert description here
// You can write your code in this editor
targetType = obj_pumpkin;
target = instance_nearest(x,y,targetType);

enum state {
	move = 1,
	attack = 2
};
state = state.move;
damage = 1;