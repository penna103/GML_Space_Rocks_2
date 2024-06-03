switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "BOMBS: "+string(global.bombs));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 290, "SPACE ROCKS",
			5, 5, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 440, 
			@"WASD: Move
			LEFT MOUSE: Shoot
			RIGHT MOUSE: Bomb

			Score as many points as you can!
			
			>>PRESS ENTER TO START<<
			"
		);
		draw_set_halign(fa_left);
		break;

	case rm_end:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 320, "GAME OVER",
			5, 5, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 470, 
			@"FINAL SCORE : "+string(score)
		);	
		draw_text(
			room_width/2, 545, 
			@">>PRESS ENTER TO RESTART<<"
		);	
		break;
}