/// @description actiontest
if (counter = 0){
	actionlength = 180
	speed = 2
	actiondirection = 1
}

if (counter <= actionlength){ 
	if (counter >= 1){
	moveangle = moveangle + actiondirection
	}
}

if (counter >= actionlength){
	speed = 0
}

if (counter >= actionlength + 120){
mode = irandom_range(6, 6)
counter = -1
}