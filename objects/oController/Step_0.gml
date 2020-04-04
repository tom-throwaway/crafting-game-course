
#region Pause
// Pause on escape
if (keyboard_check_pressed(vk_escape)) {
	if (!pause) {
		pause = true;
		instance_deactivate_all(true);
		
		// Create pause surface
		pauseSurf = surface_create(RES.WIDTH, RES.HEIGHT);
		surface_copy(pauseSurf, 0, 0, application_surface);
		
		// UI
		event_user(0);
	}
	else {
		pause = false;
		instance_activate_all();
		
		// Destroy pause surface
		if (surface_exists(pauseSurf)) {
			surface_free(pauseSurf);	
		}
		
		// Destroy UI
		event_user(1);
	}
}
#endregion

// Paused
if (pause) {
	// Crafting menu scrolling
	var _wheel = mouse_wheel_up() - mouse_wheel_down();
	_wheel *= 8;
	
	cMenuScroll += _wheel;
	cMenuScroll = clamp(cMenuScroll, -cMenuHeight, 0);
	
	// Apply
	with (oButtonCraft) {
		y = ystart + other.cMenuScroll;	
	}
	with (oButtonTitle) {
		y = ystart + other.cMenuScroll;	
	}
}