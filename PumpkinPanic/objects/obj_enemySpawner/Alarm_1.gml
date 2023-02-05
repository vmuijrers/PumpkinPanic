/// @description Insert description here
var rnd = random(360);
//Create some moles
instance_create_layer(obj_pumpkin.x + lengthdir_y(400, rnd), obj_pumpkin.y + lengthdir_y(400, rnd),"Instances",obj_mol); 
alarm[1] = room_speed * 30;