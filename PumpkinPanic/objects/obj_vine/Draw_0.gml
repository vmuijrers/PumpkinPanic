/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(getSpriteVine(growDir, level), 0, x, y,1,1,0,isHead?c_red :c_white,1);	
draw_arrow(x,y, x + growDir[0] * 32, y + growDir[1] * 16, 1);