/// @description Insert description here
// You can write your code in this editor
nextLevel = true;
for (var i = 0; i < ds_list_size(flowerList); ++i) {
    // code here
	var flower = ds_list_find_value(flowerList, i);
	nextLevel &= flower.isOpen;
}
if(nextLevel)
{
	event_user(0);
}