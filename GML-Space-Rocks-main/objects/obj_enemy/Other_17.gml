/// @description avoidplayer
if instance_exists(obj_par_playerobjects){
playeravoidangle = 
point_direction(x, y, instance_nearest(x, y, obj_par_playerobjects).x, instance_nearest(x, y, obj_par_playerobjects).y) 
- 180
}

if (hspeed3 > -4.0 && hspeed3 < 4.0){
	hspeed3 = hspeed3 + dcos(playeravoidangle) * 0.1
}
if (vspeed3 > -4.0 && vspeed3 < 4.0){
	vspeed3 = vspeed3 + -dsin(playeravoidangle) * 0.1
}