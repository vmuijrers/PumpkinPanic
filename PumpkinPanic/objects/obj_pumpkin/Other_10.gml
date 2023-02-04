/// @description Insert description here
// You can write your code in this editor
//Grow
level+=1;
numVines = ds_list_size(allVinesList);
//spawn a new vine
if(random(10) > 5){
	
	rnd = random( 360);
	newVine = instance_create_layer( x + lengthdir_x(64, rnd), y + lengthdir_y(64, rnd), "Instances", obj_vine);
	newVine.isHead = true;
	newVine.growDir = rnd;
	ds_list_add(allVinesList, newVine);
}


for (var i = 0; i < numVines; ++i) {
	curVine = ds_list_find_value(allVinesList, i);
    if(curVine.isHead){
		rnd = -30 + random(60);
		newVine = instance_create_layer( x + lengthdir_x(64, curVine.growDir +rnd), y + lengthdir_y(64, curVine.growDir +rnd), "Instances", obj_vine);
		newVine.isHead = true;
		newVine.growDir = curVine.growDir + rnd;
		curVine.isHead = false;
		ds_list_add(allVinesList, newVine);
	}
}