/// @description Insert description here
// You can write your code in this editor
with(obj_pumpkin)
{
	event_user(0)
}
var nx = 40+random(room_width-80)
var ny= 40+random(room_height-80)
var nrst = instance_nearest(nx,ny,obj_vine);

while(!collision_point(nx,ny,nrst,true,true))
{
		nx = nrst.x - 64 + random(128)
		ny = nrst.y - 64 + random(128)
}
x=nx;
y=ny;