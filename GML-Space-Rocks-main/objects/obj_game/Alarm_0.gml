/// @description spawn enemies
if(room != rm_game){
	exit;
}

repeat(enemyqueue + 1){
	if (choose(0, 1) == 0){
		var xx = choose(0, room_width);
		var yy = irandom_range(0, room_height);
	} else {
		var xx = irandom_range(0, room_width);
		var yy = choose(0, room_height);	
	}	
	
	instance_create_layer(xx, yy, "Instances", obj_enemy)
}

instance_create_layer(x,y, "Instances", obj_enemy_spawner)
enemyqueue = 0
alarm[0] = 2700