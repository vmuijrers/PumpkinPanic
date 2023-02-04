/// @description Insert description here
// You can write your code in this editor
nearest_player = instance_nearest(x,y, obj_player);
distToPlayer = point_distance(x,y,nearest_player.x,nearest_player.y);
if(state == bird_state.move){
	
	if(distToPlayer < 100){
		moveDir = point_direction(x,y, nearest_player.x, nearest_player.y);
		state = bird_state.flee;
	}else{
		//move to target	
		moveDir = point_direction(x,y, target.x, target.y);
	}
	xDir = lengthdir_x(moveSpeed, moveDir);
	yDir = lengthdir_y(moveSpeed, moveDir);
	x += xDir;
	y += yDir;
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
		
}
