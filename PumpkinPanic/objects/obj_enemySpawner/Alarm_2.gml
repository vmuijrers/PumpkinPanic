/// @description Insert description here
// You can write your code in this editor
//Create a birds
var rnd = random(360);
//Create some birds
instance_create_layer(obj_pumpkin.x + lengthdir_x(600, rnd), obj_pumpkin.y + lengthdir_y(600, rnd),"Instances",obj_raaf); 
alarm[2] = room_speed * 15;