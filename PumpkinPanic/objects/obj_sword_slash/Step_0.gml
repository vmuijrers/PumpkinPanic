/// @description Insert description here
// You can write your code in this editor
//if(global.waiting) exit;
x=daddy.x
y=daddy.y
anim+=0.25;
if(anim>=images)
{
	instance_destroy();
	exit;
}
else
{
	image_index=imag[floor(anim)]
	if(floor(anim) mod 2 == 1)
	{
		image_index+=8;
	}
}

hasfocus=0;