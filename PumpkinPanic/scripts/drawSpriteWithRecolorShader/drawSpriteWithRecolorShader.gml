// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//originalColor = rgba [0..255, 0..1]
//replacementColor = rgba [0..255, 0..1]
//dir = -1, 1
function drawSpriteWithRecolorShader(spriteIndex, imageIndex, xx, yy, dir, originalColor, replacementColor){
	colorIn = shader_get_uniform(shColorReplaceBlend, "in_Colour0");
	colorOut = shader_get_uniform(shColorReplaceBlend, "in_Colour1");
	colorTolerance = shader_get_uniform(shColorReplaceBlend, "colorTolerance");
	colorBlend = shader_get_uniform(shColorReplaceBlend, "blend");
	shader_set(shColorReplaceBlend);
	shader_set_uniform_f(colorIn, originalColor[0] /255.0,originalColor[1]/255.0, originalColor[2]/255.0, originalColor[3]);
	shader_set_uniform_f(colorOut, replacementColor[0]/255.0, replacementColor[1]/255.0,replacementColor[2]/255.0, replacementColor[3]);
	shader_set_uniform_f(colorTolerance, 0,0,0,0);
	shader_set_uniform_f(colorBlend, 0.0);
	draw_sprite_ext(spriteIndex, imageIndex,xx,yy,dir, 1, 0, c_white, 1);
	shader_reset();
}