/// @description Insert description here
// You can write your code in this editor
for(var i=0;i<5;i++)
{
	if(i==pieces-1 && mode ==0) continue;
	draw_sprite(spr_mol,21-i,pieceX[i*8],pieceY[i*8]);
}
if(mode==1)
{
	draw_sprite(spr_mol,image_index,x,y)
}
