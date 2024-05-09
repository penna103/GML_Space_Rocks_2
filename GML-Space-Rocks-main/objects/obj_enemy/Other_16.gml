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

if (hspeeddodge > -3.0 && hspeeddodge < 3.0){
	hspeeddodge = hspeeddodge + dcos(dodgeangle) * 0.5
}
if (vspeeddodge > -3.0 && vspeeddodge < 3.0){
	vspeeddodge = vspeeddodge +  -dsin(dodgeangle) * 0.5
}