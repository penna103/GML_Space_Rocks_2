/// @description enemymove2
if (counter = 1){
	actionlength = irandom_range(1, 3)
	speed = 3
	
	turndirection = choose(1, -1)
}

if (counter >= 1){
	moveangle = moveangle + turndirection
}

if (counter >= actionlength * 90){
mode = irandom_range(1, 2)
counter = 0
event_user(0)
}