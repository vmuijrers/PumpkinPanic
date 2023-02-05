/// @description Insert description here
// You can write your code in this editor
if(state == swat_state.dead){exit;}
nearest_player = instance_nearest(x,y, obj_player);

distToPlayer = point_distance(x,y,nearest_player.x,nearest_player.y);

if(state == swat_state.run){

	moveDirFlock = 0;
	dx = 0;
	dy = 0;
	num = 0;
	//flocking
	
	if(instance_number(obj_swat) > 1){
		otherMole = collision_circle(x,y, 20, obj_swat, false, true);
		if(otherMole != noone){
			moveDirFlock = point_direction(otherMole.x, otherMole.y,x,y);
			dx += lengthdir_x(moveSpeed,moveDirFlock);
			dy += lengthdir_y(moveSpeed,moveDirFlock);
			num++;
		}
	}
	moveDir = point_direction(x,y, nearest_player.x, nearest_player.y);
	if(distToPlayer < attackRange){
		state = swat_state.attack;
	}
	
	dx += lengthdir_x(moveSpeed,moveDir);
	dy += lengthdir_y(moveSpeed,moveDir);
	num+=1.0;
	xDir = sign(dx);
	x += dx / num;
	y += dy / num * 0.5;
}else if(state == swat_state.attack){
	if(distToPlayer < attackRange && alarm[0] < 0){
		alarm[0] = 60;
		with(nearest_player)
		{
			event_user(0);
		}
	}
	if(distToPlayer > attackRange && alarm[0] < 0){
		state = swat_state.run;	
	}
}else if(state == swat_state.idle){
	
}