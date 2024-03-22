/// @description firelaser
audio_play_sound(snd_zap, 1, false);

var inst = instance_create_layer(x,y, "Instances", obj_laser);
inst.direction = image_angle
inst.image_angle = image_angle