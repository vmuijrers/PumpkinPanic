/// @description Insert description here
// You can write your code in this editor
/*if(hasfocus==1)
{
	gpu_set_fog(true,c_white,0,0)        
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	gpu_set_fog(false,c_white,0,0)   
}
else if ( hasfocus ==2)
{
	gpu_set_fog(true,c_black,0,0)        
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	gpu_set_fog(false,c_white,0,0)   
}
else
{
*/
draw_circle(x+ image_xscale*24,y - 15, attackRange*0.6, true)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
//}