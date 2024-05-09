moveangle = irandom_range(0, 359)
counter = -1
mode = irandom_range(1, 2)
actionlength = 999
hspeednatural = 0
hspeeddodge = 0
hspeedavoidplayer = 0
vspeednatural = 0 
vspeeddodge = 0
vspeedavoidplayer = 0
dodging = 0
dodgeanglebullet = 0
playerclose = 0

vision = instance_create_layer(x,y, "Instances", obj_enemy_vision)
vision.image_angle = image_angle
vision.owner = self