/// @description Insert description here
// You can write your code in this editor
if(state == buur_state.move){
	draw_sprite_ext(spr_buurman_move, -1, x, y,xDir,1,0, c_white,1);	
}else if(state == buur_state.talk){
	img += 0.2;
	if(img > sprite_get_number(spr_buurman_talk) -1){
		img = 2;
	}
	draw_sprite_ext(spr_buurman_talk, img, x, y,xDir,1,0, c_white,1);
}else if(state == buur_state.hit){
	draw_sprite_ext(spr_buurman_hit, -1, x, y,xDir,1,0, c_white,1);
}else if(state == buur_state.dead){
	img += 0.2;
	img = clamp(img, 0, sprite_get_number(spr_buurman_dead) -1);
	draw_sprite_ext(spr_buurman_dead, img, x, y,xDir,1,0, c_white,1);
}