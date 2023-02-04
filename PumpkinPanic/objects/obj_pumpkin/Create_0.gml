/// @description Insert description here
// You can write your code in this editor
level = 0;
maxLevel = 10;
flowersPerLevel = 1;
halfTileWidth = 32;
halfTileHeight = 16;
allVinesList = ds_list_create();
result = [];
result = getFreeTilePosition(x,y, obj_vine);
newVine = spawnVine(x + result[0] * halfTileWidth, y + result[1] * halfTileHeight, true, result);
ds_list_add(allVinesList, newVine);


