image_angle = point_direction(x, y, mouse_x, mouse_y);

if keyboard_check(ord("A")){
	motion_add(180, 0.2)
}

if keyboard_check(ord("D")){
	motion_add(0, 0.2)
}

if keyboard_check(ord("W")){
	motion_add(90, 0.2)
}

if keyboard_check(ord("S")){
	motion_add(270, 0.2)	
}

if(speed > 0){
	speed = speed - 0.005
}

if(speed > 3.5){
	speed = speed - 0.195
}

move_wrap(true,true,sprite_width/2);

if (mouse_check_button(mb_left)){
	if (bulletcounter >= 15 - bulletcharge){
		var inst = instance_create_layer(x,y, "Instances", obj_shot);
		inst.direction = image_angle
		audio_play_sound(snd_hurt, 1, false);
		bulletcounter = 0
		if bulletcharge > 1{
			bulletcharge = bulletcharge - 1	
		}
	}
} else if bulletcharge < 15{
	bulletcharge = bulletcharge + 1/6
}

if (mouse_check_button(mb_right)) && (bombcounter >= 120) && (global.bombs > 0){
	instance_create_layer(x,y, "Instances", obj_bomb)
	bombcounter = 0
	global.bombs = global.bombs - 1
}

if (bulletcounter < 15){
	bulletcounter = bulletcounter + 1
}

if (bombcounter < 120){
	bombcounter = bombcounter + 1
}