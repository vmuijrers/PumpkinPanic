// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dropItem(currentItem){
			switch(currentItem)
			{
				case item.legeemmer:
					var letTheEmmerHitTheFloor=instance_create_layer(x,y,"Instances",obj_emmer);
					letTheEmmerHitTheFloor.isFilled=false;
					letTheEmmerHitTheFloor.hSpd = hSpd;
					letTheEmmerHitTheFloor.vSpd = vSpd;
				break;
				case item.volleemmer:
					var letTheEmmerHitTheFloor= instance_create_layer(x,y,"Instances",obj_emmer);
					letTheEmmerHitTheFloor.isFilled=true;
					letTheEmmerHitTheFloor.hSpd = hSpd;
					letTheEmmerHitTheFloor.vSpd = vSpd;
				break;
				case item.schoffel:
					var gooiDieSchoffelOpDeGrond= instance_create_layer(x,y,"Instances",obj_schoffel);
					gooiDieSchoffelOpDeGrond.hSpd = hSpd;
					gooiDieSchoffelOpDeGrond.vSpd = vSpd;
				break;
			}
}