/// @description Insert description here
// You can write your code in this editor
//spawn a snail
var rnd = random(360);
instance_create_layer(obj_pumpkin.x + lengthdir_x(300, rnd), obj_pumpkin.y + lengthdir_y(300, rnd),"Instances",obj_slak); 
alarm[0] = random_range(150, 300);