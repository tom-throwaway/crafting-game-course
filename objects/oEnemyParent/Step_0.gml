/// @description

// Inherit the parent event
event_inherited();

// Attack player
if (collision_circle(x, y, attackRadius, oPlayer, false, false) && attackCooldown == 0) {
	with (oPlayer) {
		getAttacked(other);	
	}
	
	attackCooldown = 20;
}

// Attack cooldown
if (attackCooldown > 0) attackCooldown--;