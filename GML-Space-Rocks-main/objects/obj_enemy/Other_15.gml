/// @description attack3
if (counter = 0){
	actionlength = 90
	speed = 3
	actiondirection = choose(1, -1)
}

if (counter >= 1){
	moveangle = moveangle + actiondirection * 2
}

if (counter = 45){event_user(0)}

if (counter >= actionlength){
mode = irandom_range(1, 5)
counter = -1
}