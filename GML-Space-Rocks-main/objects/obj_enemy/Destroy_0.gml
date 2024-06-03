score = score + 100

with(vision){
	instance_destroy()
}

repeat(10){
	var inst = instance_create_layer(x,y,"Instances", obj_debris)
	inst.image_blend = make_color_rgb(255, 0, 10)	
}