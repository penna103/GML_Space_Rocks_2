lives = lives - 1;

with obj_game{
	alarm[1] = 150;
}

audio_play_sound(snd_die, 1, false);

instance_destroy()

repeat(150){
	instance_create_layer(x,y,"Instances",obj_debris)	
}