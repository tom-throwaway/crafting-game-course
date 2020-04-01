
if (!collected && place_meeting(x, y, oPlayer)) {
	// Add to inventory
	
	// Collected
	collected = true;
}

// Fade away
if (collected) {
	image_alpha -= 0.05;
	y -= 0.5;
	
	// Destroy instance
	if (image_alpha < 0.1) {
		instance_destroy();	
	}
}

// Gravity
if (z < 0) {
	zspd += 0.5;
	z += zspd;
	
	// Collision with ground
	if (z >= 0) {
		z = 0;
		zspd = 0;
	}
}