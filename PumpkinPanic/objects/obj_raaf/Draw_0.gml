/// @description Insert description here
// You can write your code in this editor
if(state == bird_state.move || state == bird_state.flee){
	img += 0.2;
	if(img >= 5){
		img = 1;	
	}
	draw_sprite_ext(spr_raaf,img, x,y, sign(xDir), 1, 0, c_white, 1);
}else if(state == bird_state.idle){
	draw_sprite_ext(spr_raaf,0, x,y, sign(xDir), 1, 0, c_white, 1);
}