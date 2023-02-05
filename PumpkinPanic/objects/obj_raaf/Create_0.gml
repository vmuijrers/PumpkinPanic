/// @description Insert description here
// You can write your code in this editor
event_inherited();
targetType = obj_pumpkin;
target = instance_nearest(x,y,targetType);
xDir = 1;
enum bird_state {
	move = 1,
	idle = 2,
	flee = 3,
	attack = 4,
	dead  =5
};
img = 0;
image_speed = 0.2
state = bird_state.move;
damage = 1;
attackRange = 20;
moveSpeed = 1.5;
moveDir = 1;
fireRate = room_speed * 3;

hitPoints = 1;