/// @description Insert description here
// You can write your code in this editor
//On Hit
if(level >= 0){
	alarm[2] = 16;	
}
if(level == -1){ exit;}
level -= 1;
level = clamp(level, -1, 3);
if(level == -1){
	img =0;	
}
