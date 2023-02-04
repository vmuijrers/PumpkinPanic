/// @description Insert description here
// You can write your code in this editor
depth = y/1000.0;
curSprite += 0.2;
curSprite = min(curSprite, maxSpritePerLevel[min(level, 2)]);
draw_sprite_ext(getSpriteVineShadow(growDir, level), curSprite, x, y,1,1,0,c_white,1);	
draw_sprite_ext(getSpriteVine(growDir, level), curSprite, x, y,1,1,0,isHead?c_red :c_white,1);	
draw_arrow(x,y, x + growDir[0] * 32, y + growDir[1] * 16, 1);