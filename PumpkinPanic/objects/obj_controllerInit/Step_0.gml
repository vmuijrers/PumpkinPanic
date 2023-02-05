/// @description Insert description here
// You can write your code in this editor
global.avgX=0;
global.avgY=0;

var plyrs=instance_number(obj_player)
for(var i=0;i<plyrs;i++) {
	var inst=instance_find(obj_player,i);
	global.avgX+=inst.x;
	global.avgY+=inst.y;
}
global.avgX=global.avgX/plyrs
global.avgY=global.avgY/plyrs

var cx=global.avgX-480;
var cy=global.avgY-270;
cx=max(cx,0)
cy=max(cy,0)
cx=min(cx,room_width-960)
cy=min(cy,room_height-540)

cam = view_camera[0]
camera_set_view_pos(cam,cx,cy)

obj_overlay.x=cx;
obj_overlay.y=cy;