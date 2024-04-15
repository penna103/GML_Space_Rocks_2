/// @description attack2
if (counter = 0){
	actionlength = 120
	speed = 2
	actiondirection = choose(-1, 1)
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 90 * -(actiondirection)}
	actionmagnitude = choose (0, 1)
	fireangle = 0
}

if (counter >= 0){
	moveangle = moveangle + actiondirection * 1.5
	
	fireangle = fireangle + actiondirection * 1.5
	if instance_exists(obj_ship){image_angle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180 + fireangle}
}

if actionmagnitude = 0 {
	if (counter = 0) or (counter = 30) or (counter = 60) or (counter = 90) or (counter = 120){event_user(0)}
} else{
	if (counter = 0) or (counter = 40) or (counter = 80) or (counter = 120){event_user(0)}
}

if (counter >= actionlength){
mode = irandom_range(1, 5)
counter = -1
}