image_angle = point_direction(x, y, mouse_x, mouse_y);

if keyboard_check(ord("A")){
	motion_add(180, 0.1)
}

if keyboard_check(ord("D")){
	motion_add(0, 0.1)
}

if keyboard_check(ord("W")){
	motion_add(90, 0.1)
}

if keyboard_check(ord("S")){
	motion_add(270, 0.1)	
}

if(speed > 0){
	speed = speed - 0.01	
}

if(speed > 2.5){
	speed = speed - 0.19
}

if(mouse_check_button_pressed(mb_left)){
alarm [0] = 1
}

move_wrap(true,true,sprite_width/2);