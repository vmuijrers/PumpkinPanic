/// @description Insert description here
// You can write your code in this editor
if(isFilled)
{
	isFilled = false;
	waterTarget = collision_circle(x,y, waterRadius, obj_waterTarget, false, true);
	if(waterTarget != noone && !waterTarget.isActivated){
		waterTarget.isActivated = true;
	}
}