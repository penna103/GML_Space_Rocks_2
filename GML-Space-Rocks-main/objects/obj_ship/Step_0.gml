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

if (mouse_check_button(mb_left)) && (bulletcooldown >= 15){
	var inst = instance_create_layer(x,y, "Instances", obj_shot);
	inst.direction = image_angle
	audio_play_sound(snd_zap, 1, false);
	bulletcooldown = 0
}

if (mouse_check_button(mb_right)) && (bombcooldown >= 120) && (global.bombs > 0){
	instance_create_layer(x,y, "Instances", obj_bomb)
	bombcooldown = 0
	global.bombs = global.bombs - 1
}

if (bulletcooldown < 15){
	bulletcooldown = bulletcooldown + 1
}

if (bombcooldown < 180){
	bombcooldown = bombcooldown + 1
}