/// @description Insert description here
// You can write your code in this editor
targetType = obj_pumpkin;
target = instance_nearest(x,y,targetType);
xDir = 1;
enum state {
	move = 1,
	attack = 2,
	dead = 3
};
img = 0;
state = state.move;
damage = 1;
attackRange = 20;
moveSpeed = 10;
image_speed = 0.1
fireRate = room_speed;