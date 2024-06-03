/// @description dodge
if instance_exists(obj_shot){
dodgeanglebullet = 
dsin
(point_direction(x, y, instance_nearest(x, y, obj_shot).x, instance_nearest(x, y, obj_shot).y) 
- bulletangle)
}
if (dodgeanglebullet <= 0){
	dodgedirection = 1
} if (dodgeanglebullet > 0){
	dodgedirection = -1
}

dodgeangle = bulletangle + dodgedirection * 90

if (hspeed2 > -2.5 && hspeed2 < 2.5){
	hspeed2 = hspeed2 + dcos(dodgeangle) * 0.25
}
if (vspeed2 > -2.5 && vspeed2 < 2.5){
	vspeed2 = vspeed2 +  -dsin(dodgeangle) * 0.25
}