/// @description action5attack3
if (counter = 0){
	actionlength = 90
	actiondirection = choose(1, -1)
}

if (counter >= 0){
	moveangle = moveangle + actiondirection * 2
	hspeed1 = dcos(moveangle) * 3
	vspeed1 = -dsin(moveangle) * 3
}

if (counter = 45){event_user(0)}

if (counter >= actionlength){
	mode = irandom_range(1, 5)
	counter = -1
}