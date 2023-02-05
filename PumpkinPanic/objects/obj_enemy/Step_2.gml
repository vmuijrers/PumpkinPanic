/// @description Insert description here
// You can write your code in this editor
//physics
fx *= 0.95;
x += fx;
if(abs(zz) >= 0.5){
	dz += 0.25; //acc
	zz += dz; //vel
	fy += zz; //disp
	if(fy >= 0){
		zz = -zz * 0.4;	
		dz = 0;
	}
	y = startY + fy;
}