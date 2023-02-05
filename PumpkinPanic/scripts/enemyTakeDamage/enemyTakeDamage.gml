// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyTakeDamage(target, damage){
	
	with(target){
		hitPoints -= damage;
		if(hitPoints <= 0){
			event_user(1);
		}
	}
}