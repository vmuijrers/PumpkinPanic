/// @description Insert description here
// You can write your code in this editor
moveDir = point_direction(x,y*2,obj_player.x,obj_player.y*2);
moveSpd=2
pieces =40;
xDir = 1;
for(var i=0;i<pieces;i++)
{
	pieceX[i]=x+i*moveSpd;
	pieceY[i]=y;
}

mode =0; 

alarm[0]=180