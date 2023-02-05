/// @description Insert description here
// You can write your code in this editor
if(state == swat_state.dead){exit;}
state = swat_state.hit;
startY = y;
alarm[1] = 16;
playSound(sound.killswat)