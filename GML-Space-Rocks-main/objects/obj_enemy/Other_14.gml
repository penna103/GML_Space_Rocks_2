/// @description enemyattack2
///remove variable fireangle if making enemy no longer face player every step///
if (counter = 0){
	actionlength = 120
	speed = 2
	actiondirection = choose(1)
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 90 * -(actiondirection)}
	fireamount = choose (1, 1)
	if instance_exists(obj_ship){fireangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180}
}

if (counter >= 0){
	moveangle = moveangle + actiondirection * 1.5
	
	if instance_exists(obj_ship){fireangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180 + moveangle + 90}
	image_angle = fireangle
}

if fireamount = 0 {
	if (counter = 0) or (counter = 30) or (counter = 60) or (counter = 90) or (counter = 120){event_user(0)}
} else{
	if (counter = 0) or (counter = 120){event_user(0)}
}

if (counter >= actionlength){
mode = irandom_range(4, 4)
counter = -1
}