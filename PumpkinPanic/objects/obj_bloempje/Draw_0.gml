/// @description Insert description here
// You can write your code in this edito

if(alarm[1] > 0){
	scale -= 0.04;
	scale = clamp(scale, 0, 1);
	draw_sprite_ext(spr_bloemetje_interact, -1, x, y, scale, scale, 0,c_white, 1);
}else
if(alarm[0] > 0){
	draw_sprite_ext(spr_bloemetje_interact, -1, x, y, scale, scale, 0,c_white, 1);
}else{
	scale += 0.04;
	scale = clamp(scale, 0, 1);
	draw_sprite_ext(isOpen ? spr_bloemetje_open : spr_bloemetje_closed, -1, x, y, scale, scale, 0,c_white, 1);
}