// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function takeDamage(damage){
	
	hitPoints -= damage;
	if(hitPoints <= 0){
		//Game Over!	
	}
	alarm[0] = 10;
}