/// @description Insert description here
// You can write your code in this editor
if(state == buur_state.dead){exit;}
event_inherited();
state = buur_state.dead;
with(obj_enemySpawner){
	alarm[4] = 60;
}