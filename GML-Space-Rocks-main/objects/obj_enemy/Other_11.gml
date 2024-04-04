/// @description enemymove1
if (counter = 1){
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180}
	speed = 3
	actionlength = irandom_range(60, 180)
}

if (counter >= actionlength * 100){
mode = irandom_range(1, 3)
counter = 0
}