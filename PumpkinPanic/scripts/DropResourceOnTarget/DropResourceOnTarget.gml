// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DropResourceOnTarget(resource, target){
	if(target.currentResource != noone){
	  return false;	
	}
	target.currentResource = resource;
	resource.owner = target;
		

	return true;
}