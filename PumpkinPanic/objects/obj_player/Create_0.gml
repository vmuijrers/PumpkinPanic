/// @description Insert description here
// You can write your code in this editor
dropRange = 50;
pickupRange = 50;
currentItemInstance = noone;
resourceOffSetY = 40;

//Movement Stuff
moveSpeed = 2
moveDir = 1;
hSpd=0; //om huidige horizontale snelheid bij te houden
vSpd=0; //om huidige verticale snelheid bij te houden
acceleration=0.6; //Skrrt skrrt
fric=0.91; //Eigenlijk 1-fric voor frictie
verticalRatio=0.55; // Hoe snel bewegen we verticaal

//Movement animation stuff
image_speed=0;
movingPixels=0;

//Hit animation stuff and things
enum hitStages {
	none=-1,
	charging=1,
	hitting=2,
	recovering=3
}
hitrecovertAt=10;
hittingStage = hitStages.none;
hitCharge=0;
myAnimation=animation.idle

isDown=false;

//Controller Stuff
myGamepad=0;

//Item wielding stuff
currentItem=item.none;

