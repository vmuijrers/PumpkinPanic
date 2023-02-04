/// @description Insert description here
// You can write your code in this editor
/*for(var i=0;i<=room_width/64;i++)
{
	for(var ii=0;ii<room_height/16;ii++)
	{
		//Random generation script to set tilers for now while we fix them for later
		if(point_distance(i*64,ii*32,obj_player.x,obj_player.y*2))<256
		{
			tilesSprite[i][ii]=spr_gras
		}
		else if(point_distance(i*64,ii*32,obj_player.x,obj_player.y*2))>480
		{
			tilesSprite[i][ii]=spr_asfalt
		}
		else
		{
			tilesSprite[i][ii]=choose(spr_asfalt,spr_gras,spr_stoep)
		}
		tilesIndex[i][ii]=floor(random(sprite_get_number(tilesSprite[i][ii])))
	}
}
