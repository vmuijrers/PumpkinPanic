/// @description Insert description here
// You can write your code in this editor
if(state == state.dead){
img += 0.05;
img = clamp(img, 0, 2);
draw_sprite_ext(spr_snail_dead,img,x, y, 1, 1, 0, c_white, 1);	
}else{
	draw_sprite_ext(sprite_index,-1,x, y, xDir, 1, 0, c_white, 1);
}
