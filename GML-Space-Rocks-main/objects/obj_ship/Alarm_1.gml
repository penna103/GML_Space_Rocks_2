var inst = instance_create_layer(x,y, "Instances", obj_shot);
inst.direction = image_angle + random_range(-5, 5);
audio_play_sound(snd_zap, 1, false);
alarm [0] = 14