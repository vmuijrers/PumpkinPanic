/// @description Insert description here
var rnd = random(360);
//Create some moles
instance_create_layer(obj_pumpkin.x + lengthdir_x(600, rnd), obj_pumpkin.y + lengthdir_y(600, rnd),"Instances",obj_mol); 
alarm[1] = room_speed * 15;