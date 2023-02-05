/// @description Insert description here
// You can write your code in this editor
if(win_game){
	draw_sprite_ext(spr_game_over,2 ,0, 0,2,2,0,c_white,1);	
}else
if(game_over != -1){

	draw_sprite_ext(spr_game_over,game_over ,0, 0,2,2,0,c_white,1);		

}