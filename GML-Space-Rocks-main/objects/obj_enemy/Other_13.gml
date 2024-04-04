/// @description enemyattack1
if (counter = 1){
	actionlength = irandom_range(1, 3)
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180}
	turndirection = choose(1, -1)
	speed = 3
	
	moveangle = moveangle + turndirection * 90
}

if (counter = 65) or (counter = 185) or (counter = 305){speed = 0.5}

if (counter = 80) or (counter = 100) or (counter = 200) or (counter = 220) or (counter = 320) or (counter = 340){event_user(0)}

if (counter = 120) or (counter = 240){
	if instance_exists(obj_ship){moveangle = point_direction(x, y, obj_ship.x, obj_ship.y) + 180}
	turndirection = choose(1, -1)
	speed = 3
	
	moveangle = moveangle + turndirection * 90
}

if (counter >= actionlength * 120){
mode = irandom_range(1, 3)
counter = 0
}