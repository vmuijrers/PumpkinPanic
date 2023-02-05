/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	event_user(0);	
}

setDepth();
if(keyboard_check_pressed(vk_enter)){
	//room_goto(Room2);	
	game_restart();
}