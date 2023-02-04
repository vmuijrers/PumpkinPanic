/// @description Insert description here
// You can write your code in this editor

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
		
	dir = point_direction(x,y,target.x,target.y);	
	dx = lengthdir_x(moveSpeed, dir);
	dy = lengthdir_y(moveSpeed, dir);
	x += 1.0 / room_speed * dx;
	y += 1.0 / room_speed * dy;
	
}else if (state ==state.attack){
	
	if(alarm[0] < 0)
	{
		alarm[0] = fireRate;
		//attack!
		target.hitPoints -= damage;
	}
	
}