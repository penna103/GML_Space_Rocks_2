if (primed = 0){exit}

instance_destroy()

var inst1 = instance_create_layer(x,y,"Instances", obj_explosion)
inst1.rotatespeed = 1.5
inst1.image_xscale = 7.5
inst1.image_yscale = 7.5

var inst2 = instance_create_layer(x,y,"Instances", obj_explosion)
inst2.rotatespeed = 3.5
inst2.image_xscale = 7.5
inst2.image_yscale = 7.5

var inst3 = instance_create_layer(x,y,"Instances", obj_explosion)
inst3.rotatespeed = -1.5
inst3.image_xscale = 5
inst3.image_yscale = 5
inst3.image_blend = make_color_rgb(63, 72, 206)

var inst4 = instance_create_layer(x,y,"Instances", obj_explosion)
inst4.rotatespeed = -3.5
inst4.image_xscale = 5
inst4.image_yscale = 5
inst4.image_blend = make_color_rgb(63, 72, 206)

