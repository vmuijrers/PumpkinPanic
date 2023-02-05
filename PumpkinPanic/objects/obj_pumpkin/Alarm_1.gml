/// @description Insert description here
// You can write your code in this editor
if(level >=2){
	var newFlower = instance_create_layer(x,y, "Instances",obj_bloempje);
	ds_list_add(flowerList, newFlower);
}
for (var i = 0; i < ds_list_size(flowerList); ++i) {
    // code here
	var flower = ds_list_find_value(flowerList, i);
	var vine = ds_list_find_value(allVinesList, irandom(ds_list_size(allVinesList)-1));
	flower.x = vine.x + random_range(-30, 30);
	flower.y = vine.y + random_range(-30, 30);
	flower.isOpen = false;
}