// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//Returns a grid Direction between [-1,1],[-1,1]
function getFreeTilePosition(xx, yy, objType){
	
	var numOptions = 0;
	var options = [];
	var finalResult = [];
	for (var xxx = -1; xxx <= 1; ++xxx) {
	    // code here
		for (var yyy = -1; yyy <= 1; ++yyy) {
		    // code here
			if(xxx == 0 || yyy == 0){ continue; }
			var xx1 = xxx * 32;
			var yy1 = yyy * 16;
			if(!position_meeting(xx + xx1 , yy + yy1, objType) && !position_meeting(xx + xx1 *2 , yy + yy1 *2, objType)){
				var result = [];
				result[0] = xxx;
				result[1] = yyy;
				options[numOptions] = result;
				numOptions++;
			}
		}
	}
	if(numOptions != 0){
		finalResult = options[irandom(numOptions - 1)]
	}else{
		finalResult[0] = 0;
		finalResult[1] = 0;
	}
	return finalResult;
	
}