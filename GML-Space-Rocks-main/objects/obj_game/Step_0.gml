if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_end:
			game_restart();
			break;
	}
}

if (score >= 2000 * nextbomb){
	global.bombs = global.bombs + 1
	nextbomb = nextbomb + 1
}

if(room == rm_game){
	gamecounter = gamecounter + 1
	asteroidspawncounter = asteroidspawncounter + 1
	asteroidcooldown = 200000/gamecounter + 14;
	if (asteroidspawncounter >= asteroidcooldown){event_user(0)}
}

