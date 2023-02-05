/// @description Insert description here
// You can write your code in this editor
target = instance_nearest(x,y, obj_player);

if(point_distance(x,y, target.x, target.y) < 30){
	mode = 1;
	//sprite_index=spr_mol;
	image_speed=0.5
	image_index=0
	alarm[1]=84
	alarm[2]=42;//attack
	moveSpd=0;

}else{
	mode = 0;
	alarm[0] = 30;	
}
