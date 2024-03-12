instance_destroy();
audio_play_sound(snd_die, 1, false);

with(other){
	instance_destroy();
	repeat(30){
		instance_create_layer(x,y,"Instances", obj_debris);
	}
}