/// @description Insert description here
// You can write your code in this editor
enum swat_state{
	idle = 1,
	run = 2,
	attack = 3,
	hit = 4,
	dead = 5
}
state = swat_state.run;
event_inherited();
attackRange = 40;
moveSpeed = 2;
hitPoints = 20;

img = 0;
image_speed = 0.4