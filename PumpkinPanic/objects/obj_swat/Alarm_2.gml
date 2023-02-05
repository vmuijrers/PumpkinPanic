/// @description Insert description here
// You can write your code in this editor
if(state == swat_state.dead){exit;}
nearest_player = instance_nearest(x,y, obj_player);

distToPlayer = point_distance(x,y,nearest_player.x,nearest_player.y);
if(distToPlayer < attackRange){
	with(nearest_player)
	{
		event_user(0);
	}
}