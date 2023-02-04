/// @description Insert description here
// You can write your code in this editor
level = 0;
maxLevel = 10;
flowersPerLevel = 1;
allVinesList = ds_list_create();
rnd = random(4) * 90;
newVine = instance_create_layer( x + lengthdir_x(64, rnd), y + lengthdir_y(64, rnd), "Instances", obj_vine);	
newVine.isHead = true;
newVine.growDir = rnd;
ds_list_add(allVinesList, newVine);