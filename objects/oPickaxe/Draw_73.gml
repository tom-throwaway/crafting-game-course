
// Draw selector
if (instance_exists(selectorInst)) {
	with (selectorInst) {
		// Draw sprite in all 4 corners
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_top, 1, 1, 0, -1, 1);
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_top, 1, 1, -90, -1, 1);
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_bottom, 1, 1, 180, -1, 1);
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_bottom, 1, 1, 90, -1, 1);
	}
	
	// Animation
	selectorFrame += 0.15;
	
	// Clamp animation frame
	if (selectorFrame >= selectorFrameNumber) {
		selectorFrame -= selectorFrameNumber;	
	}
	
	// Reset selector
	selectorInst = noone;
}
