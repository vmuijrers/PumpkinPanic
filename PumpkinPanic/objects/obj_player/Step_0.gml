/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D"))){
    x += moveSpeed;	
	moveDir = 1;
}

if(keyboard_check(ord("A"))){
    x -= moveSpeed;	
	moveDir = -1;
}

if(keyboard_check(ord("W"))){
    y -= moveSpeed * 0.7;	
}

if(keyboard_check(ord("S"))){
    y += moveSpeed * 0.7;	
}

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
