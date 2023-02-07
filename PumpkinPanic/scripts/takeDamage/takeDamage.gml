// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function takeDamage(target, damage){
	
	with(target){
		hitPoints -= 1;
		playSound(sound.pumpkinhit);
		if(hitPoints <= 0){
			//Game Over!
			game_over = 1;
		}
		img = 1;
		alarm[0] = 16;
	}
}