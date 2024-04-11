/// @description enemymove1
if (counter = 0){
	actionlength = irandom_range(60, 180)
	speed = 3
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180}
}

if (counter >= actionlength){
mode = irandom_range(1, 4)
counter = -1
}