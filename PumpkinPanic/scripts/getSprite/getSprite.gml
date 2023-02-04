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
	legeemmer=1,
	volleemmer=2,
	schoffel=3
}

function getSprite(_guy,_animation,_item){
	var spriteTree;
	spriteTree[guy.twan][animation.idle][item.none]=spr_twanIdle;
	spriteTree[guy.twan][animation.running][item.none]=spr_twanRun;
	spriteTree[guy.twan][animation.hit][item.none]=-1;
	
	spriteTree[guy.twan][animation.idle][item.legeemmer]=spr_twanLegeEmmerIdle;
	spriteTree[guy.twan][animation.running][item.legeemmer]=spr_twanLegeEmmerRun;
	spriteTree[guy.twan][animation.hit][item.legeemmer]=-1;
	
	spriteTree[guy.twan][animation.idle][item.volleemmer]=spr_twanVolleEmmerIdle;
	spriteTree[guy.twan][animation.running][item.volleemmer]=spr_twanVolleEmmerRun;
	spriteTree[guy.twan][animation.hit][item.volleemmer]=-1;	

	spriteTree[guy.twan][animation.idle][item.schoffel]=spr_twanNoHandsIdle;
	spriteTree[guy.twan][animation.running][item.schoffel]=spr_twanNoHandsRun;
	spriteTree[guy.twan][animation.hit][item.schoffel]=spr_twanNoHandsHit;	
	
	myAnimation=_animation
	
	return( spriteTree[_guy][_animation][_item]);
}