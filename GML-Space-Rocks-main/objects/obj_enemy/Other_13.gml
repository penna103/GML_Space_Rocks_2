/// @description attack1
if (counter = 0){
	actionlength = irandom_range(1, 2) * 120
	speed = 3
	actiondirection = choose(-1, 1)
	actionmagnitude = irandom_range(-60, 30)
	if instance_exists(obj_ship){moveangle = 
		point_direction(x, y, obj_ship.x, obj_ship.y) 
		+ 180 
		+ actiondirection * 90
		+ actionmagnitude * actiondirection}
}

if (counter = 65) or (counter = 185){speed = 0.5}

if (counter = 80) or (counter = 100) or (counter = 200) or (counter = 220){event_user(0)}

if (counter = 120) or (counter = 240){
	speed = 3
	if instance_exists(obj_ship){moveangle = 
		point_direction(x, y, obj_ship.x, obj_ship.y) 
		+ 180 
		+ actiondirection * 90
		+ actionmagnitude * actiondirection}
}

if (counter >= actionlength){
mode = irandom_range(1, 5)
counter = -1
}