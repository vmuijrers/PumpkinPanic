/// @description Insert description here
// You can write your code in this editor
//if(global.waiting) exit;
x=daddy.x
y=daddy.y
anim+=0.25;
if(anim>=images)
{
	instance_destroy();
	exit;
}
else
{
	image_index=imag[floor(anim)]
	if(floor(anim) mod 2 == 1)
	{
		image_index+=8;
	}
}

var result = ds_list_create();
var _num = collision_circle_list(x ,y- 15,attackRange,obj_enemy, false, true,result,false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
        enemy = ds_list_find_value(result, i);
		if(enemy.hitPoints > 0){
			enemyTakeDamage(self, enemy, damage);
			break;
		}
    }
}
ds_list_destroy(result);
hasfocus=0;

var nrstVine = instance_nearest(x,y,obj_vine);
if(nrstVine != noone && point_distance(x,y, nrstVine.x, nrstVine.y) < attackRange){
	with(nrstVine){
		event_user(0);	
	}
}
setDepth();
depth-=1;
