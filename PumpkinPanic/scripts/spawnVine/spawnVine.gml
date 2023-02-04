// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnVine(xPos, yPos, isHead, _growDir){

	newVine = instance_create_layer(xPos,yPos, "Instances", obj_vine);
	newVine.isHead = true;
	newVine.growDir = _growDir;
	return newVine;
}