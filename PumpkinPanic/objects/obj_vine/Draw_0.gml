/// @description Insert description here
// You can write your code in this editor
depth = y/1000.0;
if(alarm[1] > 0){ return;}
/*
if(isHead){

	if(alarm[0] > 0){
		loopDir = -1;
	}
	curSprite += 0.2 * loopDir;
	if(alarm[0] < 0){
		if(curSprite < 3 && loopDir == -1){
			loopDir = 1
		}
		if(curSprite >= 9.8 && loopDir == 1){
			loopDir = -1;	
		}
	}
	curSprite = clamp(curSprite, 0, 9.9);
	draw_sprite_ext(spr_vine_head_loop, curSprite, x, y,1,1,0,c_white,1);
}else
*/


if(alarm[2] > 0){
	draw_sprite_ext(spr_vine_hit, -1, x, y,1,1,0,c_white,1);	
}else if(level == -1){
	draw_sprite_ext(spr_vine_dead, -1, x, y,1,1,0,c_white,1);	
}else{

	curSprite += 0.2;
	curSprite = min(curSprite, maxSpritePerLevel[min(level, 2)]);
	if(isHead){
		img = 2;	
	}else{
		img += 0.2;
		img = clamp(img, 0, 4);
	}
	draw_sprite_ext(spr_shrubbery, img, x, y,1,1,0,c_white,1);
	if(showVine)
	{
		draw_sprite_ext(getSpriteVineShadow(growDir, level), curSprite, x, y,1,1,0,c_white,1);
		draw_sprite_ext(getSpriteVine(growDir, level), curSprite, x, y,1,1,0,c_white,1);
	}
}

//draw_arrow(x,y, x + growDir[0] * 32, y + growDir[1] * 16, 1);