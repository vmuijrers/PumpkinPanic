/// @description Insert description here
// You can write your code in this editor

//Kijken of er een emmertje dichtbij is om water in te doen
if(instance_exists(obj_emmer))
{
	if(point_distance(x+32,(y+18)*2,obj_emmer.x,obj_emmer.y*2) <=30)
	{
		obj_emmer.isFilled=true;
	}

}
image_speed=0.3