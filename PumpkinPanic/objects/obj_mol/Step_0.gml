/// @description Insert description here
// You can write your code in this editor
if(isDead) {return;}
target = instance_nearest(x,y, obj_player);
if(mode ==0)
{
	if(target != noone && point_distance(x,y, target.x,target.y) >= 30){
		moveDirFlock = 0;
		dx = 0;
		dy = 0;
		num = 0;
		//flocking
		if(instance_number(obj_mol) > 1){
			otherMole = collision_circle(x,y, 20, obj_mol, false, true);
			if(otherMole != noone){
				moveDirFlock = point_direction(otherMole.x, otherMole.y,x,y);
				dx += lengthdir_x(moveSpd,moveDirFlock);
				dy += lengthdir_y(moveSpd,moveDirFlock);
				num++;
			}
		}
		
		moveDir = point_direction(x,y,target.x,target.y);
		dx += lengthdir_x(moveSpd,moveDir);
		dy += lengthdir_y(moveSpd,moveDir);
		num++;
		xDir = sign(dx);
		x += dx / num;
		y += dy / num * 0.5;
	}
	for(var i=1;i<pieces;i++)
	{
		pieceX[i-1]=pieceX[i]
		pieceY[i-1]=pieceY[i]
	}
	pieceX[pieces-1]=x
	pieceY[pieces-1]=y
	moveSpd= 2;
}