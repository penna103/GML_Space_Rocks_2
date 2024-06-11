if (primed = 0){exit}

instance_destroy()

audio_play_sound(snd_explosion, 1, false)

var inst3 = instance_create_layer(x,y,"Instances", obj_explosion)
inst3.rotatespeed = -2.3
inst3.size = 6
inst3.image_blend = make_color_rgb(63, 72, 206)

var inst4 = instance_create_layer(x,y,"Instances", obj_explosion)
inst4.rotatespeed = -4
inst4.size = 6
inst4.image_blend = make_color_rgb(63, 72, 206)

var inst1 = instance_create_layer(x,y,"Instances", obj_explosion)
inst1.rotatespeed = 2.3
inst1.size = 8.5

var inst2 = instance_create_layer(x,y,"Instances", obj_explosion)
inst2.rotatespeed = 4
inst2.size = 8.5