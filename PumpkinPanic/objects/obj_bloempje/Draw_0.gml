/// @description Insert description here
// You can write your code in this edito

if(alarm[1] > 0){
	img -= 0.2;
	img = clamp(img, 0, 3);
	draw_sprite_ext(spr_bloemetje_grow, img, x, y, 1, 1, 0,c_white, 1);
}else
if(alarm[0] > 0){
	draw_sprite_ext(spr_bloemetje_interact, -1, x, y, 1, 1, 0,c_white, 1);
}else{
	img += 0.2;
	img = clamp(img, 0, 3);
	if(img == 3){
		draw_sprite_ext(isOpen ? spr_bloemetje_open : spr_bloemetje_closed, -1, x, y, 1, 1, 0,c_white, 1);
	}else{
		draw_sprite_ext(spr_bloemetje_grow, img, x, y, 1, 1, 0,c_white, 1);
	}
}