/// @description Insert description here
// You can write your code in this editor
++curLevel;
curLevel = clamp(curLevel,0, maxLevel);
alarm[curLevel] = random_range(30, 150);