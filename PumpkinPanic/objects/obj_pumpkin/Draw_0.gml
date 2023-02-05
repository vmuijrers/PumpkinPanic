/// @description Insert description here
// You can write your code in this editor


if(alarm[0] > 0){
	//flashy hit
	img += 0.2;
	if(img >= 3){
		img = 1;	
	}
	draw_sprite_ext(level_Sprites[level], img, x, y, 1, 1, 0 ,c_white, 1);	
}else{
	img = 0;
	draw_sprite_ext(level_Sprites[level], img, x, y, 1, 1, 0 ,c_white, 1);		
}

for (var i = 0; i < maxHealth; ++i) {
    // code here
	if(hitPoints > i ){
		draw_sprite_ext(spr_pumpkin_health, 0, -maxHealth * 0.5 * sprite_get_width(spr_pumpkin_health)+ x + i * sprite_get_width(spr_pumpkin_health),y - 100, 1 ,1 ,0,c_white,1);	
	}else{
		draw_sprite_ext(spr_pumpkin_health, 1, -maxHealth * 0.5 * sprite_get_width(spr_pumpkin_health)+x + i * sprite_get_width(spr_pumpkin_health),y - 100, 1 ,1 ,0,c_white,1);
	}
}