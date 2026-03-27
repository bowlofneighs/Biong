if(place_meeting(x, y + y_speed, oSolid)){
	y_speed = -y_speed - 2
}

if(place_meeting(x, y, oPlayer)){
	instance_destroy()
}

if(x > 600 or x < -100){
	instance_destroy()
}

y_speed += 1/global.movement_speed
move_and_collide(x_speed, y_speed, oSolid);