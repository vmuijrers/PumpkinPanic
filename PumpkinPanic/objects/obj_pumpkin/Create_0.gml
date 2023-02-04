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

img = 0;

hitPoints = 10;
level_Sprites[0] = spr_pumpkin_00;
level_Sprites[1] = spr_pumpkin_01;
level_Sprites[2] = spr_pumpkin_02;
level_Sprites[3] = spr_pumpkin_03;
level_Sprites[4] = spr_pumpkin_04;
level_Sprites[5] = spr_pumpkin_05;
level_Sprites[6] = spr_pumpkin_06;
level_Sprites[7] = spr_pumpkin_07;
level_Sprites[8] = spr_pumpkin_08;
