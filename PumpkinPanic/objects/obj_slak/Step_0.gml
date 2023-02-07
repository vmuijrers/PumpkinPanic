/// @description Insert description here
// You can write your code in this editor
if(state == state.dead) {return;}
player = instance_nearest(x,y, obj_player);
if(player != noone) { 
	if(point_distance(player.x,player.y, x, y)< 25){
		state = state.dead;
		playSound(sound.killslug)
		return;
	}
}
if(target != noone){
	distToTarget = point_distance(x,y, target.x, target.y);	
	if(distToTarget > attackRange){
		state = state.move;			
	}else {
		state = state.attack;	
	}
}else{
	return;	
}

if(state == state.move){
	sprite_index = spr_snail;
	dir = point_direction(x,y,target.x,target.y);	
	dx = lengthdir_x(moveSpeed, dir);
	xDir = sign(dx);
	dy = lengthdir_y(moveSpeed, dir);
	x += 1.0 / room_speed * dx;
	y += 1.0 / room_speed * dy;
	
}else if (state == state.attack){
	sprite_index = spr_snail_attack;
	if(alarm[0] < 0)
	{
		alarm[0] = fireRate;
		//attack!
		

	}
	
}