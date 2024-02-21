instance_destroy();
audio_play_sound(snd_die, 1, false);

with(other){
	instance_destroy();
	if(sprite_index == spr_asteroidlarge){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroidmedium;
		}
		score = score + 2;
	} else if (sprite_index == spr_asteroidmedium){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroidsmall;
		}
		score = score + 3;
	} else if (sprite_index == spr_asteroidsmall){
		score = score + 5;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances", obj_debris);
	}
