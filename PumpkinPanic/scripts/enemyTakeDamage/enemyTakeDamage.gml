// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyTakeDamage(source, target, damage){
	
	with(target){
		hitPoints -= damage;
		event_user(2);//hit
		if(hitPoints <= 0){
			event_user(1);
			fx = lengthdir_x(10, point_direction(source.x, source.y, target.x, target.y));
			zz = -6;
		}
	}
}