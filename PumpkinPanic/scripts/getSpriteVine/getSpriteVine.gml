// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getSpriteVine(vec2Dir, lvl){
	var finalSprite = spr_vine_small_right_down;
	//if(lvl == 0)
	{
		if(vec2Dir[0] == 1 && vec2Dir[1] == 1){
			finalSprite = spr_vine_small_right_down;
		}
		else if(vec2Dir[0] == -1 && vec2Dir[1] == 1){
			finalSprite = spr_vine_small_left_down;
		}
		else if(vec2Dir[0] == 1 && vec2Dir[1] == -1){
			finalSprite = spr_vine_small_right_up;
		}
		else if(vec2Dir[0] == -1 && vec2Dir[1] == -1){
			finalSprite = spr_vine_small_left_up;
		}
		return finalSprite;
	}
}