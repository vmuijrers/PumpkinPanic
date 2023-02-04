/// @description Insert description here
// You can write your code in this editor
//Grow
level+=1;
numVines = ds_list_size(allVinesList);
//spawn a new vine

if(random(10) > 5){
	
	var result = getFreeTilePosition(x,y, obj_vine);
	if(!(result[0] == 0 && result[0] == 0)){
			//cant spawn vine
		newVine = spawnVine(x  + result[0] * halfTileWidth, y + result[1] * halfTileHeight, true, result);
		ds_list_add(allVinesList, newVine);
	}

}


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
			newVine = spawnVine(curVine.x  + curVine.growDir[0] * halfTileWidth+ result[0] * halfTileWidth, curVine.y+ curVine.growDir[1] * halfTileHeight + result[1] * halfTileHeight, true, result);
			newVine.parentVine = curVine;
			ds_list_add(allVinesList, newVine);
		}
	}
}
for (var i = 0; i < ds_list_size(allVinesList); ++i) {
	curVine = ds_list_find_value(allVinesList, i);
    curVine.level += vineLevelIncrease;
}
