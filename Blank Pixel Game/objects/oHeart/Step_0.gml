if(time >= 300){
	instance_destroy()
}
time++

if(place_meeting(x, y, oPlayer)){
	if(not oPlayer.deaths == 0){
		effect_create_above(ef_explosion, x, y, 1, c_red)
		oPlayer.deaths--
	}
	instance_destroy()
}