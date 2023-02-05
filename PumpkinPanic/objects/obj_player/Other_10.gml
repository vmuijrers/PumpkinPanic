/// @description Insert description here
// You can write your code in this editor


//Getting hit
isDown=true;
playSound(sound.gethit);
if(currentItem != item.none){
	dropItem(currentItem,true);
}

var allDown = true;
for (var i = 0; i < instance_number(obj_player); ++i;)
{
    var plr = instance_find(obj_player,i);
	if(!plr.isDown){
		allDown = false;
	}
}
if(allDown){
	with(obj_pumpkin){
		game_over = 0;	
	}
}
currentItem=item.none;

sprite_index=getSprite(guy.twan,animation.gethit,currentItem);
image_index=0;
image_speed=0.2