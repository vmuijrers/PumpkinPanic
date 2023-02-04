/// @description Insert description here
// You can write your code in this editor
random_set_seed(random_get_seed())
level = 0;
maxLevel = 10;
vineLevelIncrease = 0.25;
flowersPerLevel = 1;
halfTileWidth = 32;
halfTileHeight = 16;
allVinesList = ds_list_create();
result = [];
result = getFreeTilePosition(x,y, obj_vine);
newVine = spawnVine(x + result[0] * halfTileWidth, y + result[1] * halfTileHeight, true, result);
ds_list_add(allVinesList, newVine);

hitPoints = 10;

