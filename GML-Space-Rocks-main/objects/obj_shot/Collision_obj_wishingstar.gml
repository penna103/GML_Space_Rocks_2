instance_destroy();
audio_play_sound(snd_die, 1, false);

with(other){
	instance_destroy();
		repeat(3){
		instance_create_layer(x,y,"Instances", obj_asteroid_large);
	}
		score = score + 20
		lives = lives + 1;
		audio_play_sound(snd_win, 1, false);
	repeat(10){
		instance_create_layer(x,y,"Instances", obj_debris);
	}
}