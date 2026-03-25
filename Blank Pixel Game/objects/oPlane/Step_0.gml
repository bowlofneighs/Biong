//mmmm using my own alarm system because fuck gamemaker
x = (((time*time) / 4) / global.movement_speed ) - 576 




time++

if(x > 700){
	global.fires--
	instance_destroy()
}