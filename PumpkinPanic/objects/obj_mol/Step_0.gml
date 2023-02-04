/// @description Insert description here
// You can write your code in this editor

if(mode =0)
{
	x+=lengthdir_x(moveSpd,moveDir)
	y+=lengthdir_y(moveSpd,moveDir)*0.5;
	
	for(var i=1;i<pieces;i++)
	{
		pieceX[i-1]=pieceX[i]
		pieceY[i-1]=pieceY[i]
	}
	pieceX[pieces-1]=x
	pieceY[pieces-1]=y

	moveDir = point_direction(x,y*2,obj_player.x,obj_player.y*2);
	moveSpd=2;
}