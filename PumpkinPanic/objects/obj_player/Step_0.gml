/// @description Insert description here
// You can write your code in this editor

//Movement
if(keyboard_check(ord("D"))){
	moveDir = 1;
	if(keyboard_check(vk_shift))
	{
		x += moveSpeed*acceleration;	
		if hSpd<0 then hSpd+=acceleration;
		hSpd+=acceleration;
	}
	else{
		x+=moveSpeed;
	}
}

if(keyboard_check(ord("A"))){
	moveDir = -1;
	if(keyboard_check(vk_shift))
	{
		x -=moveSpeed*acceleration	
		if hSpd>0 then hSpd-=acceleration;
		hSpd-=acceleration
	}
	else{
		x-=moveSpeed
	}
}

if(keyboard_check(ord("W"))){ 
	if(keyboard_check(vk_shift))
	{
		y -= moveSpeed * 0.7 * acceleration
		if vSpd>0 then vSpd-=acceleration;
		vSpd-=acceleration
	}
	else{
		y -= moveSpeed * 0.7;	
	}
}

if(keyboard_check(ord("S"))){
	if(keyboard_check(vk_shift))
	{
	    y += moveSpeed * 0.7 * acceleration;
		if vSpd<0 then vSpd+=acceleration;
		vSpd+=acceleration
	}
	else{
		y += moveSpeed * 0.7;
	}
}
//Do the zoomies
x+=hSpd;
y+=vSpd*0.7;
//Als we bewegen moet de animatie bewegen
if(x!=xprevious ) then image_index+=0.3;
else if(y!=yprevious ) then image_index+=0.1;
if(hSpd*hSpd>0) then image_index+=0.2*abs(hSpd)/(acceleration/(1-fric));
else if(vSpd*vSpd>0) then image_index+=0.1*abs(vSpd)/(acceleration/(1-fric));
//Dit is wrijving
if(!keyboard_check(vk_shift)){
	//Kleine boost met wrijving wanneer geen shift
	if hSpd>0 then hSpd-=acceleration*0.1;
	if hSpd<0 then hSpd+=acceleration*0.1;
	if vSpd>0 then vSpd-=acceleration*0.1;
	if vSpd<0 then vSpd+=acceleration*0.1;
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
