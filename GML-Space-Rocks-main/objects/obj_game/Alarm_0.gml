if(room != rm_game){
	exit;
}

if (choose(0, 1) == 0){
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);	
}

var asteroidsize = (irandom_range(0, 2))

if (asteroidsize == 0){
	instance_create_layer(xx, yy, "Instances", obj_asteroid_small)
} else if (asteroidsize == 1){
	instance_create_layer(xx, yy, "Instances", obj_asteroid_medium)	
} else{
	instance_create_layer(xx, yy, "Instances", obj_asteroid_large)
}
		
alarm [0] = room_speed;