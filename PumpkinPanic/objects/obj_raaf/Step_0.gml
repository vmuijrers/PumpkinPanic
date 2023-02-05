/// @description Insert description here
// You can write your code in this editor
if(state == bird_state.dead){exit;}
nearest_player = instance_nearest(x,y, obj_player);
distToPlayer = point_distance(x,y,nearest_player.x,nearest_player.y);
if(state == bird_state.move){

	moveDirFlock = 0;
	dx = 0;
	dy = 0;
	num = 0;
	//flocking
	if(instance_number(obj_raaf) > 1){
		otherMole = collision_circle(x,y, 20, obj_raaf, false, true);
		if(otherMole != noone){
			moveDirFlock = point_direction(otherMole.x, otherMole.y,x,y);
			dx += lengthdir_x(moveSpeed,moveDirFlock);
			dy += lengthdir_y(moveSpeed,moveDirFlock);
			num++;
		}
	}
	if(distToPlayer < 100){
		moveDir = point_direction(x,y, nearest_player.x, nearest_player.y);
		state = bird_state.flee;
	}else{
		//move to target	
		moveDir = point_direction(x,y, target.x, target.y);
		if(point_distance(x,y, target.x, target.y) < 40){
			state = bird_state.attack;	
		}
	}
	dx += lengthdir_x(moveSpeed,moveDir);
	dy += lengthdir_y(moveSpeed,moveDir);
	num++;
	xDir = sign(dx);
	x += dx / num;
	y += dy / num * 0.5;

}else if(state == bird_state.flee){
	
	moveDir = point_direction(x,y, nearest_player.x, nearest_player.y);
	xDir = -lengthdir_x(moveSpeed, moveDir);	
	yDir = -lengthdir_y(moveSpeed, moveDir);	
	x += xDir;
	y += yDir;
	if(distToPlayer > 300 && alarm[0] < 0 ){
		alarm[0] = 60;
		state = bird_state.idle;
	}
}else if(state == bird_state.idle){
		
}else if(state == bird_state.attack){
		if(alarm[1] < 0){
			takeDamage(target, 1);
			alarm[1] = 30;	
		}
		if(distToPlayer < 100){
			moveDir = point_direction(x,y, nearest_player.x, nearest_player.y);
			state = bird_state.flee;
		}
}
