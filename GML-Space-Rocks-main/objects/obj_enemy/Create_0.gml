moveangle = irandom_range(0, 359)
counter = -1
mode = irandom_range(1, 2)
actionlength = 999
hspeed1 = 0
hspeed2 = 0
hspeed3 = 0
hspeed4 = 0
vspeed1 = 0 
vspeed2 = 0
vspeed3 = 0
vspeed4 = 0
dodging = 0
dodgeanglebullet = 0
playerclose = 0

vision = instance_create_layer(x,y, "Instances", obj_enemy_vision)
vision.image_angle = image_angle
vision.owner = self