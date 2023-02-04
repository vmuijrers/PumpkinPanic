/// @description Insert description here
// You can write your code in this editor
/*offY=-16
for(var ii=0;ii<room_height/16;ii++) {
	if(ii mod 2 == 0) {
		offX=-32
	}
	else {
		offX=0;
	}
	for(var i=0;i<=room_width/64;i++) {
		draw_sprite(tilesSprite[i][ii],tilesIndex[i][ii],offX+i*64,offY+ii*16)
	}
}
