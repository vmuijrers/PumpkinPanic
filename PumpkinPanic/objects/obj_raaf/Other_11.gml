/// @description Insert description here
// You can write your code in this editor

if(state != bird_state.dead){
	playSound(sound.killbird)
	event_inherited();
	img = 0;
	state = bird_state.dead;

}