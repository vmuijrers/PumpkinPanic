/// @description Insert description here
// You can write your code in this editor
image_speed=0;

anim=0;

canHit = true;
images=4;
for(var i=0;i<images;i++)
{
	imag[i]=choose(0,1,2,3,4,5,6,7)
}
//remove doubles
for(var i=0;i<images;i++)
{
	for(var ii=0;ii<i;ii++)
	{
		while(imag[i]==imag[ii])
		{
			imag[i]=choose(0,1,2,3,4,5,6,7)
		}
	}
	
}

image_index=imag[0]
damage = 10;
hasfocus=0
attackRange = 40;