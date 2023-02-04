/// @description Insert description here
// You can write your code in this editor
//Button maps to see how to act
var keyR=(keyboard_check(ord("D")) || gamepad_button_check(myGamepad,gp_padr));
var keyL=(keyboard_check(ord("A")) || gamepad_button_check(myGamepad,gp_padl));
var keyU=(keyboard_check(ord("W")) || gamepad_button_check(myGamepad,gp_padu));
var keyD=(keyboard_check(ord("S")) || gamepad_button_check(myGamepad,gp_padd));
var keyRun=(keyboard_check(vk_shift) || gamepad_button_check(myGamepad,gp_face1));
//Movement
if(keyR){
	moveDir = 1;
	if(keyRun)
	{
		x += moveSpeed*acceleration*0.5;	
		if hSpd<0 then hSpd+=acceleration;
		hSpd+=acceleration;
	}
	else{
		x+=moveSpeed;
	}
}
if(keyL){
	moveDir = -1;
	if(keyRun)
	{
		x -=moveSpeed*acceleration	*0.5
		if hSpd>0 then hSpd-=acceleration;
		hSpd-=acceleration
	}
	else{
		x-=moveSpeed
	}
}
if(keyU){ 
	if(keyRun)
	{
		y -= moveSpeed * verticalRatio * acceleration *0.5
		if vSpd>0 then vSpd-=acceleration;
		vSpd-=acceleration
	}
	else{
		y -= moveSpeed * verticalRatio;	
	}
}
if(keyD){
	if(keyRun)
	{
	    y += moveSpeed * verticalRatio * acceleration *0.5
		if vSpd<0 then vSpd+=acceleration;
		vSpd+=acceleration
	}
	else{
		y += moveSpeed * verticalRatio;
	}
}
//Do the zoomies
x+=hSpd;
y+=vSpd*verticalRatio;
//Als we bewegen moet de animatie bewegen
movingPixels = (movingPixels*4 + point_distance(x,y/verticalRatio,xprevious,yprevious/verticalRatio))/5
if(movingPixels>=moveSpeed*0.7)
{
	if(sprite_index!=getSprite(guy.twan,animation.running,currentItem))
	{
		sprite_index=getSprite(guy.twan,animation.running,currentItem)
		image_index=0;//At least 1 frame freeze on start frame
	}
	else
	{
		image_speed=sqrt(movingPixels/moveSpeed)*0.5
	}

}
else
{
	if(movingPixels<=moveSpeed*0.3)
	{
		sprite_index=getSprite(guy.twan,animation.idle,currentItem);
		image_speed=0.5;
	}
}
//Dit is wrijving
if(!keyRun){
	//Kleine boost met wrijving wanneer geen shift
	if hSpd>0 then hSpd-=acceleration*0.05;
	if hSpd<0 then hSpd+=acceleration*0.05;
	if vSpd>0 then vSpd-=acceleration*0.05;
	if vSpd<0 then vSpd+=acceleration*0.05;
}
var mDir = point_direction(0,0,hSpd,vSpd)
var mSpd = point_distance(0,0,hSpd,vSpd);
hSpd=lengthdir_x(mSpd*(fric),mDir)
vSpd=lengthdir_y(mSpd*(fric),mDir)


//Dingen op pakken
if(keyboard_check_pressed(vk_space)){
	//Do we have an object? try to drop it
   if(currentResource != noone){
	 resourceTarget = collision_circle(x,y, dropRange, obj_resourceTarget, false, true);
	  if(resourceTarget != noone){
		  if( DropResourceOnTarget(currentResource, resourceTarget)){
			currentResource = noone;  
		  }
	  }
	 }else
	 {
		 //see if we can pickup an object
		 possibleTargetObject = collision_circle(x,y, pickupRange, obj_resource, false, true);
		 if(possibleTargetObject != noone && possibleTargetObject.owner == noone){
			   currentResource = possibleTargetObject;
			   currentResource.owner = self;
		 }
	 }
}
