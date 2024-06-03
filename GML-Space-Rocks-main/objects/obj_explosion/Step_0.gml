image_angle = image_angle + rotatespeed

counter = counter + (1/60)

if (counter <= 1){
	image_alpha = counter * (0.9)

	image_xscale = counter * size
	image_yscale = counter * size
}

if (counter >= 3.5){
	image_xscale = image_xscale * 0.9
	image_yscale = image_yscale * 0.9
}

if(image_xscale < 0.05){
	instance_destroy()
}