/// @description enemyattack1
if (counter = 0){
	actionlength = irandom_range(1, 2)
	speed = 3
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180}
	actiondirection = choose(1, -1)
	
	moveangle = moveangle + actiondirection * 90
}

if (counter = 65) or (counter = 185){speed = 0.5}

if (counter = 80) or (counter = 100) or (counter = 200) or (counter = 220){event_user(0)}

if (counter = 120) or (counter = 240){
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180}
	actiondirection = choose(1, -1)
	speed = 3
	
	moveangle = moveangle + actiondirection * 90
}

if (counter >= actionlength * 120){
mode = irandom_range(1, 4)
counter = -1
}