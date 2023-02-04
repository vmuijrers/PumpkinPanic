/// @description Insert description here
// You can write your code in this editor
++curLevel;
res = levels[curLevel];
for(i=0; i< array_length(res); i++){
	if(levels[curLevel][i]==1 && alarm[i] <= 0){
		alarm[i] = random_range(30, 150);	
	}
}