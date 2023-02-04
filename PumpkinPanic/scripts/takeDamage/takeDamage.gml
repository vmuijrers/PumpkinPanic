// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function takeDamage(target, damage){
	
	with(target){
		hitPoints -= damage;
		if(hitPoints <= 0){
			//Game Over!	
		}
		img = 1;
		alarm[0] = 16;
	}
}