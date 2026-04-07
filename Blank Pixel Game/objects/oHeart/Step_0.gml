if(time >= 300){
	instance_destroy()
}
time++

if(place_meeting(x, y, oPlayer)){
	if(not oPlayer.deaths == 0){
		oPlayer.deaths--
	}
	instance_destroy()
}