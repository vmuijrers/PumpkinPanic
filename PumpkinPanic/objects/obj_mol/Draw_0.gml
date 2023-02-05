/// @description Insert description here
// You can write your code in this editor
if(isDead){
	img += 0.2;
	img = clamp(img,0, 5);
	draw_sprite(spr_mol_dead,img,x,y);	
	exit;
}
for(var i=0;i<5;i++)
{
	if(i==pieces-1 && mode ==0) continue;
	draw_sprite(sprite_index,21-i,pieceX[i*8],pieceY[i*8]);
}
if(mode==1)
{
	draw_sprite_ext(sprite_index,image_index,x,y, -sign(xDir), 1, 0, c_white, 1)
}
