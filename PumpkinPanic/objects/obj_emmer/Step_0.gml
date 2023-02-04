/// @description Insert description here
// You can write your code in this editor

x+=hSpd;
y+=vSpd*0.5;

hSpd*=0.9;
vSpd*=0.9;
if(abs(hSpd)<0.2)
{
	hSpd=0
}
if(abs(vSpd)<0.2)
{
	vSpd=0;
}