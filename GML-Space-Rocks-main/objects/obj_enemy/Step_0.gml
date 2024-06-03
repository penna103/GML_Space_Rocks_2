move_wrap(true,true,sprite_width/2);

if instance_exists(obj_ship){image_angle = point_direction(x, y, obj_ship.x, obj_ship.y)}

counter = counter + 1; 

hspeed = hspeed1 + hspeed2 + hspeed3
vspeed = vspeed1 + vspeed2 + vspeed3

event_user(mode)

if (dodging = 1){event_user(6)}
	else{
	hspeed2 = hspeed2 * 0.95
	vspeed2 = vspeed2 * 0.95
}

if instance_exists(obj_par_playerobjects) && (distance_to_object(obj_par_playerobjects) < 150){event_user(7)} else{
	hspeed3 = hspeed3 * 0.9
	vspeed3 = vspeed3 * 0.9
}

