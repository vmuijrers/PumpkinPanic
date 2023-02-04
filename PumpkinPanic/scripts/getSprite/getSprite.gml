// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum guy
{
	twan=1,
	nel=2
}
enum animation
{
	idle=1,
	running=2,
	hit=3
}
enum item
{
	none=0,
	gieter=1
}

function getSprite(_guy,_animation,_item){
	var spriteTree;
	spriteTree[guy.twan][animation.idle][item.none]=spr_twanIdle;
	spriteTree[guy.twan][animation.running][item.none]=spr_twanRun;
	spriteTree[guy.twan][animation.hit][item.none]=spr_twanHit;
	spriteTree[guy.twan][animation.idle][item.gieter]=spr_twanIdleGieter;
	spriteTree[guy.twan][animation.running][item.gieter]=spr_twanRun;
	spriteTree[guy.twan][animation.hit][item.gieter]=spr_twanHit;
	return( spriteTree[_guy][_animation][_item]);
}