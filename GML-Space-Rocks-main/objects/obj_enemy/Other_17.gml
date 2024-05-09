/// @description avoidplayer
if instance_exists(obj_ship){
playeravoidangle = 
point_direction(x, y, instance_nearest(x, y, obj_ship).x, instance_nearest(x, y, obj_ship).y) 
+ 180
}

if (hspeedavoidplayer > -4.0 && hspeedavoidplayer  < 4.0){
	hspeedavoidplayer = hspeedavoidplayer + dcos(playeravoidangle) * 0.1
}
if (vspeedavoidplayer > -4.0 && vspeedavoidplayer  < 4.0){
	vspeedavoidplayer = vspeedavoidplayer + -dsin(playeravoidangle) * 0.1
}