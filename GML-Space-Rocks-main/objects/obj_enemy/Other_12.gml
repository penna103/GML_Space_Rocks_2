/// @description move2
if (counter = 0){
	actionlength = irandom_range(1, 3) * 90
	speed = 3
	actiondirection = choose(-1, 1)
}

if (counter >= 1){
moveangle = moveangle + actiondirection
}

if (counter >= actionlength){
mode = irandom_range(1, 5)
counter = -1
}