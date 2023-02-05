/// @description Insert description here
// You can write your code in this editor
if(state == swat_state.idle){
	draw_sprite_ext(spr_SWAT_idle, -1, x, y,xDir,1,0, c_white,1);	
}else if(state == swat_state.attack){
	draw_sprite_ext(spr_SWAT_attack, -1, x, y,xDir,1,0, c_white,1);
}else if(state == swat_state.run){
	draw_sprite_ext(spr_SWAT_move, -1, x, y,xDir,1,0, c_white,1);
}else if(state == swat_state.dead){
	img += 0.2;
	img = clamp(img, 0, sprite_get_number(spr_SWAT_dead) -1);
	draw_sprite_ext(spr_SWAT_dead, img, x, y,xDir,1,0, c_white,1);
}else if(state == swat_state.hit){
	draw_sprite_ext(spr_SWAT_hit, -1, x, y,xDir,1,0, c_white,1);
}