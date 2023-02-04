/// @description Insert description here
// You can write your code in this editor
//Button maps to see how to act
var keyR=(keyboard_check(ord("D")) || gamepad_button_check(myGamepad,gp_padr) || gamepad_axis_value(myGamepad, gp_axislh) > 0);
var keyL=(keyboard_check(ord("A")) || gamepad_button_check(myGamepad,gp_padl) || gamepad_axis_value(myGamepad, gp_axislh) < 0);
var keyU=(keyboard_check(ord("W")) || gamepad_button_check(myGamepad,gp_padu) || gamepad_axis_value(myGamepad, gp_axislv) < 0);
var keyD=(keyboard_check(ord("S")) || gamepad_button_check(myGamepad,gp_padd) || gamepad_axis_value(myGamepad, gp_axislv) > 0);
var keyRun=(keyboard_check(vk_shift) || gamepad_button_check(myGamepad,gp_face1));
var keyHit=(keyboard_check(vk_space) || gamepad_button_check(myGamepad,gp_shoulderrb));
var keyHitPressed=(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(myGamepad,gp_shoulderrb))
var keyHitReleased=(keyboard_check_released(vk_space) || gamepad_button_check_released(myGamepad,gp_shoulderrb))
var keyInteract_pressed =(keyboard_check_pressed(vk_lshift) || gamepad_button_check(myGamepad,gp_face3));
var keyDropItem_pressed =(keyboard_check_pressed(vk_lcontrol) || gamepad_button_check(myGamepad,gp_face2));
isHitting=!(hittingStage == hitStages.none || hittingStage>=hitStages.recovering)
//Movement
if(hittingStage!=hitStages.hitting)
{
	if(keyR){
	moveDir = 1;
	if(keyRun && !isHitting)
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
	if(keyRun && !isHitting)
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
	if(keyRun && !isHitting)
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
	if(keyRun && !isHitting)
	{
	    y += moveSpeed * verticalRatio * acceleration *0.5
		if vSpd<0 then vSpd+=acceleration;
		vSpd+=acceleration
	}
	else{
		y += moveSpeed * verticalRatio;
	}
}
}
//Do the zoomies
x+=hSpd;
y+=vSpd*verticalRatio;
//Als we bewegen moet de animatie bewegen
movingPixels = (movingPixels*4 + point_distance(x,y/verticalRatio,xprevious,yprevious/verticalRatio))/5
if(movingPixels>=moveSpeed*0.7)
{
	if(sprite_index!=getSprite(guy.twan,animation.running,currentItem) && !isHitting)
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
	if(movingPixels<=moveSpeed*0.3 && ! isHitting)
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
	if(abs(hSpd)+abs(vSpd)<=0.01)
	{
		hSpd=0;
		vSpd=0;
	}
}
var mDir = point_direction(0,0,hSpd,vSpd)
var mSpd = point_distance(0,0,hSpd,vSpd);
hSpd=lengthdir_x(mSpd*(fric),mDir)
vSpd=lengthdir_y(mSpd*(fric),mDir)


//Dit is al de slaan logica
var isRunning=(abs(hSpd)>0 || abs(vSpd)>0)
if(!isRunning)
{
	//Continue charging
	if(hittingStage == hitStages.charging && keyHit)
	{
		hitCharge+=1;
		image_index+=sqrt(hitCharge)*0.2;
		if(image_index>3)
		{
			image_index=1
		}
	}
	
	//Start hitting
	if (hittingStage == hitStages.none || hittingStage>=hitStages.recovering) && keyHitPressed
	{
		//Start Hitting!!!!!
		hittingStage = hitStages.charging;
		sprite_index=getSprite(guy.twan,animation.hit,currentItem)
		image_speed=0;
		iamge_index=0;
		hitCharge=0;
	}
	if(hittingStage == hitStages.hitting)
	{
		image_index+=0.3;
		if(image_index>=sprite_get_number(sprite_index)-0.5)
		{
			hittingStage = hitStages.recovering;
		}
	}
	if(keyHitReleased)
	{
		if(hittingStage == hitStages.charging)
		{
			hittingStage = hitStages.hitting;
			image_index=4;
			//BANG!!!!!
			//doRumble(myGamepad, 1, 1, room_speed / 4);
			var ID=instance_create_depth(x,y,depth-1,obj_sword_slash)
			ID.image_xscale = moveDir
			ID.daddy=self.id;
		}
	}
}

/*
//Dingen op pakken
if(keyInteract_pressed){
	//Do we have an object? try to drop it
     if(currentItem != item.none){
		if(currentItem == item.gieter){
			
		}
	 }else
	 {
		 possibleTargets = ds_list_create();
		 //see if we can pickup an object
		 collision_circle_list(x,y,pickupRange, obj_emmer, false, true, possibleTargets, false );
		 dist = 100000;
		 bestOption = noone;
		 for (var i = 0; i < ds_list_size(possibleTargets); i++) 
		 {
		     // code here
			 candidate = ds_list_find_value(possibleTargets, i);
			 distToObject = point_distance(x,y, candidate.x, candidate.y);
			 if(distToObject < dist && possibleTargets[i].owner == noone)
			 {
				 dist = distToObject;
				 bestOption = candidate;
			 }
		 }
		 if(bestOption != noone)
		 { 
			currentItem = bestOption;
			currentItem.owner = self;
		 }
	 }
}

if(keyDropItem_pressed){
	if(currentItem != item.none){
		if(currentItem == item.gieter){
				
		}
		
		currentItem = item.none;
	}
}
*/
