/// @description Insert description here
// You can write your code in this editor
//Grow

level+=1;
if(level > maxLevel){
	win_game = true;
	level = clamp(level, 0, maxLevel);
	exit;
}
playSound(sound.pumpkingrow);

level = clamp(level, 0, maxLevel);
numVines = ds_list_size(allVinesList);
hitPoints += 1;
hitPoints = clamp(hitPoints, 0, maxHealth);
//grow vines
if(level >= 4){
	for (var i = 0; i < ds_list_size(allVinesList); ++i) {
		curVine = ds_list_find_value(allVinesList, i);
	    curVine.level += vineLevelIncrease;	
	}
}


//spawn enemies
with(obj_enemySpawner){
	event_user(0);
}

//spawn new vine branch?
for(var i =0; i < min(level, 2); i++){
	randomVine = ds_list_find_value(allVinesList, irandom(ds_list_size(allVinesList)-1));
	var result = getFreeTilePosition(randomVine.x,randomVine.y, obj_vine);
	if(!(result[0] == 0 && result[0] == 0)){
			//cant spawn vine
		playSound(sound.vinegrow);
		newVine = spawnVine(randomVine.x  + result[0] * halfTileWidth, randomVine.y + result[1] * halfTileHeight, true, result);
		ds_list_add(allVinesList, newVine);
	}
}


//grow existing vine branches
for (var i = 0; i < numVines; ++i) {
	curVine = ds_list_find_value(allVinesList, i);
    if(curVine.isHead){
		with(curVine){
			alarm[0] = 30;	
		}
		result = getFreeTilePosition(curVine.x + curVine.growDir[0] * halfTileWidth,curVine.y+ curVine.growDir[1] * halfTileHeight, obj_vine);
		if(result[0] == 0 && result[0] == 0){
			//cant spawn vine
			continue;
		}else{
			//curVine.growDir = result;
			playSound(sound.vinegrow);
			newVine = spawnVine(curVine.x  + curVine.growDir[0] * halfTileWidth+ result[0] * halfTileWidth, curVine.y+ curVine.growDir[1] * halfTileHeight + result[1] * halfTileHeight, true, result);
			newVine.parentVine = curVine;
			ds_list_add(allVinesList, newVine);
		}
	}
}
//slow factor

//spawn new flowers
alarm[1] = 60;
for (var i = 0; i < ds_list_size(flowerList); ++i) {
    // shrink the flowers
	var flower = ds_list_find_value(flowerList, i);
	with(flower){
		alarm[1] = 60;	
	}
}