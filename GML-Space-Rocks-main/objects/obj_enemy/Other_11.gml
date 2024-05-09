/// @description action1move1
if (counter = 0){
	actionlength = irandom_range(60, 120)
	actionmagnitude = irandom_range(0, 90)
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 135 + actionmagnitude}
	hspeednatural = dcos(moveangle) * 3
	vspeednatural = -dsin(moveangle) * 3
}

if (counter >= actionlength){
	mode = irandom_range(1, 5)
	counter = -1
}

