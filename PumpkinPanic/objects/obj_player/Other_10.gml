/// @description Insert description here
// You can write your code in this editor


//Getting hit
playSound(sound.gethit);
if(currentItem != item.none){
	dropItem(currentItem);
}

currentItem=item.none;
isDown=true;
sprite_index=getSprite(guy.twan,animation.gethit,currentItem);
image_index=0;
image_speed=0.2