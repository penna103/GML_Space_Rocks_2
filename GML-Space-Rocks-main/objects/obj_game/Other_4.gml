if(room == rm_game){
	
	event_user(0)
	
	if(audio_is_playing(msc_song)){
		audio_play_sound(snd_zap, 1, false);	
	}

	alarm[0] = 3600
}