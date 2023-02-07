/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, image_index,x,y,moveDir,1, 0, c_white, 1);
if(myGamepad != 0)
{
	lightBlue = [54, 197, 244, 1];//RGBA
	lightRed = [236, 39, 64, 1];

	darkBlue = [51, 136, 222, 1]
	darkRed = [172, 40, 71, 1]

	//Draw replacementColors
	drawSpriteWithRecolorShader(sprite_index,image_index,x,y,moveDir, lightBlue, lightRed);
	drawSpriteWithRecolorShader(sprite_index,image_index,x,y,moveDir, darkBlue, darkRed);
}

if(currentItem==item.schoffel)
{
	if(hittingStage>=hitStages.hitting)
	{
			draw_sprite_ext(spr_twanSchoffelHit,  clamp(image_index,4,6),x,y,moveDir,1, 0, c_white, 1);
	}
	else
	{
		switch(myAnimation)
		{
			case animation.idle:
				draw_sprite_ext(spr_twanSchoffelIdle,  image_index,x,y,moveDir,1, 0, c_white, 1);
			break;
			case animation.running:
				draw_sprite_ext(spr_twanSchoffelRun,  image_index,x,y,moveDir,1, 0, c_white, 1);
			break;
			case animation.hit:
				draw_sprite_ext(spr_twanSchoffelHit,  image_index,x,y,moveDir,1, 0, c_white, 1);
			break;
		}
	}
}