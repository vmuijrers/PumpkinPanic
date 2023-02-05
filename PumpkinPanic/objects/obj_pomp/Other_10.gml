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
else
{
	nrst=instance_nearest(x+200,y+200,obj_player)
	if(point_distance(x+32,(y+18)*2,nrst.x,nrst.y*2) <=30)
	{
		if(nrst.currentItem==item.legeemmer) then nrst.currentItem=item.volleemmer
	}

	
}
image_speed=0.3