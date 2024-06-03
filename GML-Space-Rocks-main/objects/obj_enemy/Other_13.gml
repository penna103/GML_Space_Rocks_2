/// @description action3attack1
if (counter = 0){
	actionlength = irandom_range(1, 2) * 120
}

if (counter = 0) or (counter = 120){
	actiondirection = choose(-1, 1)
	actionmagnitude = irandom_range(-10, 80)
	if instance_exists(obj_ship){
		moveangle = 
		point_direction(x, y, obj_ship.x, obj_ship.y) 
		+ 180 
		+ actiondirection * 90
		+ actionmagnitude * actiondirection
		}
	hspeed1 = dcos(moveangle) * 3
	vspeed1 = -dsin(moveangle) * 3
}

if (counter = 65) or (counter = 185){
	hspeed1 = dcos(moveangle) * 0.5
	vspeed1 = -dsin(moveangle) * 0.5
	}

if (counter = 80) or (counter = 100) or (counter = 200) or (counter = 220){event_user(0)}

if (counter >= actionlength){
	mode = irandom_range(1, 5)
	counter = -1
}