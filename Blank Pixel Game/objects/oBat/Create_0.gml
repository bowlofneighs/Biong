randomise()
x_speed = 0
while (abs(x_speed) < 1){
	x_speed = random_range(-10, 10)
	randomise()
}

y_speed = random_range(-10, 10)



if(x_speed > 0){
	x = 0
} else if  (x_speed < 0){
	x = 576
}
global.enemies += 1

