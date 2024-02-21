audio_play_sound(snd_die, 1, false);
instance_destroy();

repeat(5){
		instance_create_layer(x,y,"Instances", obj_debris);
}
