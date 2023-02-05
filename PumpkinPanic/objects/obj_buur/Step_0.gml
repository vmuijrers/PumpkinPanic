/// @description Insert description here
// You can write your code in this editor
if(state == buur_state.dead){exit;}
nearest_player = instance_nearest(x,y, obj_player);

distToPlayer = point_distance(x,y,nearest_player.x,nearest_player.y);

if(state == buur_state.move){

	moveDirFlock = 0;
	dx = 0;
	dy = 0;
	num = 0;
	moveDir = point_direction(x,y, nearest_player.x, nearest_player.y);
	if(distToPlayer < attackRange){
		state = buur_state.talk;
	}
	
	dx += lengthdir_x(moveSpeed,moveDir);
	dy += lengthdir_y(moveSpeed,moveDir);
	num+=1.0;
	xDir = sign(dx);
	x += dx / num;
	y += dy / num * 0.5;
}else if(state = buur_state.talk){
	if(distToPlayer > 70){
		state = buur_state.move;	
	}
}