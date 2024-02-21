switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "LIVES: "+string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 220, "SPACE ROCKS",
			5, 5, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 360, 
			@"Score 1,000 points to win!
			
			WASD: Move
			LEFT MOUSE: Shoot
			
			>>PRESS ENTER TO START<<
			"
		);
		draw_set_halign(fa_left);
		break;

	case rm_end:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 275, "GAME OVER",
			5, 5, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 425, 
			@"FINAL SCORE : "+string(score)
		);	
		draw_text(
			room_width/2, 500, 
			@">>PRESS ENTER TO RESTART<<"
		);	
		break;
}