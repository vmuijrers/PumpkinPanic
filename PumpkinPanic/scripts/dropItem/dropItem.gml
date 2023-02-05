// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dropItem(_item){
	if(_item == item.schoffel){
		instance_create_layer(x,y,"Instances", obj_schoffel);	
	}else if(_item == item.legeemmer){
		instance_create_layer(x,y,"Instances", obj_emmer);	
	}else if(_item == item.volleemmer){
		var obj = instance_create_layer(x,y,"Instances", obj_emmer);	
		obj.isFilled = false;
	}
}