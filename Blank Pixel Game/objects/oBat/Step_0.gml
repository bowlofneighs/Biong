if(place_meeting(x, y - 5, oSolid)){
	y_speed = -y_speed - 1
}

y_speed += 1

x += x_speed/global.movement_speed
y += y_speed/global.movement_speed

if (x < 0 or x > 576){
	if(irandom(2) == 1 or global.enemies == 1){
		instance_create_layer(250, 500, "Instances", oBat)
	}
	instance_destroy()
	global.enemies -= 1
}


