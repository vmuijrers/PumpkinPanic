/// @description Insert description here
// You can write your code in this editor
img = 48;
if(curSwat < maxSwat){
	
	instance_create_layer(x + 300,y+200, "Instances", obj_swat);
	curSwat++;
}
alarm[0] = 30;
depth = 1000;