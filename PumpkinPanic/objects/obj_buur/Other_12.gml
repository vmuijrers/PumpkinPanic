/// @description Insert description here
// You can write your code in this editor
if(state == buur_state.dead){exit;}
state = buur_state.hit;
event_inherited();
alarm[1] = 16;
playSound(sound.killman)