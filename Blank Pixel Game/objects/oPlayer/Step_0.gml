

if(keyboard_check(vk_left) and not keyboard_check(vk_right) and x_speed > -20){
	x_speed-=1.5
} else if(keyboard_check(vk_right) and not keyboard_check(vk_left) and x_speed < 20){
	x_speed+=1.5
} else {
	if(x_speed > 1){
		x_speed -= 1
	} else if (x_speed < -1){
		x_speed += 1
	}
	else if (x_speed > -1.5 and x_speed < 1.5){
		x_speed = 0
	}
}


if(keyboard_check_pressed(vk_up)  and can_jump ){
	can_jump = false
	y_speed = -30 * global.movement_speed / 2
}
if(keyboard_check_pressed(vk_down)){
	y_speed = 30 * global.movement_speed / 2 
}

wrap_around()
//it has occured to me that staying up till 3 am negitvely affects your mental reasoning the following day
	
y_speed = bounce(y_speed)


y_speed+= grav;

if(can_jump = false){
	image_index = 1
} else {
	image_index = 2
}
if(y <  -150){
	y_speed = 2
}
show_debug_message($"x_speed = {x_speed} y_speed = {y_speed} can_jump = {can_jump}, y = {y} x = {x} global.enemies = {global.enemies}");
move_and_collide(x_speed/global.movement_speed, y_speed/global.movement_speed, oSolid);
time_alive += 1
check_death()
spawn = irandom(200)

if(spawn == 150){
	instance_create_layer(250, irandom_range(200, 600), "Instances", oBat)
}
if(time_alive > 300 and spawn == 100 and global.fires == 0){
	instance_create_layer(500, irandom_range(200, 600), "Instances", oFire)
}
if(spawn == 120){
	instance_create_layer(irandom(576), irandom(1024), "Instances", oHeart)
}

function bounce(y_speed){
	if(place_meeting(x, y + 2, oSolid ) or (820 < y and y < 832) ){
		if( y_speed > 10){
			y_speed = -y_speed + 3
		} else {
			y_speed = -10
		}
		can_jump = true
	}
	return y_speed
}

function wrap_around(){
		if(x > 576){
		x = 1
	} else if ( x < 0){
		x = 575
	}
}

function check_death(){
	if(place_meeting(x,y, oDeath) and touching_death == false){
		deaths++
		touching_death = true
		} 
		if(not place_meeting(x,y,oDeath)){
			touching_death = false
		}
		if(deaths == 5){
			room_restart()
	}
}

	
	