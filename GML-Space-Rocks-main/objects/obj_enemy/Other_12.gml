/// @description enemymove2
if (counter = 0){
	actionlength = irandom_range(1, 3)
	speed = 3
	actiondirection = choose(1, -1)
}

if (counter >= 1){
	moveangle = moveangle + actiondirection
}

if (counter >= actionlength * 90){
mode = irandom_range(1, 4)
counter = -1
}