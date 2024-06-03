/// @description action2move2
if (counter = 0){
	actionlength = irandom_range(1, 3) * 90
	actiondirection = choose(-1, 1)
}

if (counter >= 0){
moveangle = moveangle + actiondirection
hspeed1 = dcos(moveangle) * 3
vspeed1 = -dsin(moveangle) * 3
}

if (counter >= actionlength){
	mode = irandom_range(1, 5)
	counter = -1
}