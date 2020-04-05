
// Rotation
rotation = lerp(rotation, 45, 0.1);

image_angle = rotation * oPlayer.image_xscale;

// Get input
var _mousePress = mouse_check_button(mb_left);

// Get breakable object at mouse location
var _breakable = instance_position(mouse_x, mouse_y, oBreakableParent);

with (_breakable) {
	// Get distance
	var _dist = distance_to_object(oPlayer);
	
	if (_dist < other.breakDistance) {
		// Set selected
		other.selectorInst = id;
		
		// Click
		if (other.cooldown == 0 && _mousePress) {
			// Reduce hp
			hp--;
			
			// Set rotation
			other.rotation = -80;
			
			// Set cooldown
			other.cooldown = 20;
		}
	}
}

// Get enemy object at mouse location
var _enemy = instance_position(mouse_x, mouse_y, oEnemyParent);

with (_enemy) {
	// Get distance
	var _dist = distance_to_object(oPlayer);
	
	if (_dist < other.attackDistance) {
		// Set selected
		other.selectorInst = id;
		
		// Click
		if (other.cooldown == 0 && _mousePress) {	
			// Set rotation
			other.rotation = -80;
			
			// Set cooldown
			other.cooldown = 20;
			
			// Attack
			getAttacked(oPlayer);
		}
	}
}

// Reduce cooldown
if (cooldown > 0) {
	cooldown--;	
}