/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index,x,y,moveDir,1, 0, c_white, 1);

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