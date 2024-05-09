/// @description action4attack2
if (counter = 0){
	actionlength = 120
	actiondirection = choose(-1, 1)
	actionmagnitude = choose (0, 1, 2)
	if instance_exists(obj_ship){
		moveangle = 
		point_direction(x, y, obj_ship.x, obj_ship.y)
		+ 90 * -(actiondirection)
		}
	fireangle = 0
}

if (counter >= 0){
	moveangle = moveangle + actiondirection * 1.5
	hspeednatural = dcos(moveangle) * 2
	vspeednatural = -dsin(moveangle) * 2
	
	fireangle = fireangle + actiondirection * 1.5
	if instance_exists(obj_ship){image_angle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180 + fireangle}
}

if actionmagnitude = 0 {
	if (counter = 0) or (counter = 40) or (counter = 80){event_user(0)}
} if actionmagnitude = 1 {
	if (counter = 0) or (counter = 30) or (counter = 60) or (counter = 90){event_user(0)}
} if actionmagnitude = 2 {
	if (counter = 0) or (counter = 24) or (counter = 48) or (counter = 72) or (counter = 96){event_user(0)}
}

if (counter >= actionlength){
	event_user(0)

	mode = irandom_range(1, 5)
	counter = -1
}