direction = irandom_range(0, 359)
image_angle = irandom_range(0, 359)
speed = random_range(0.5, 3.5);
image_alpha = 0.8
size = irandom_range(0, 3)

if (size == 0){
	sprite_index = spr_debris0
} else if (size == 1){
	sprite_index = spr_debris1
} else{
	sprite_index = spr_debris2
}