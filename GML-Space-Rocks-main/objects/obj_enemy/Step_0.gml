move_wrap(true,true,sprite_width/2);

if instance_exists(obj_ship){image_angle = point_direction(x, y, obj_ship.x, obj_ship.y)}

counter = counter + 1;

hspeed = hspeednatural + hspeeddodge + hspeedavoidplayer
vspeed = vspeednatural + vspeeddodge + vspeedavoidplayer

event_user(mode)

if (dodging = 1){event_user(6)}
	else{
	hspeeddodge = hspeeddodge * 0.95
	vspeeddodge = vspeeddodge * 0.95
}

if (playerclose = 1){event_user(7)} 
	else{
	hspeedavoidplayer = hspeedavoidplayer * 0.9
	vspeedavoidplayer = vspeedavoidplayer * 0.9
}