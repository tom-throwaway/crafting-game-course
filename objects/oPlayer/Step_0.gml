
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var _inputX = _right - _left;
var _inputY = _down - _up;

moveX = _inputX * moveSpeed;
moveY = _inputY * moveSpeed;

// Collisions
if (collision(x + moveX, y)) {
	while (!collision(x + sign(moveX), y)) {
		x += sign(moveX);
	}
		
	moveX = 0;	
}
if (collision(x, y + moveY)) {
	while (!collision(x, y + sign(moveY))) {
		y += sign(moveY);
	}
	
	moveY = 0;	
}

x += moveX;
y += moveY;

// Animation: Move
if (moveX != 0 || moveY != 0) {
	sprite_index = sPlayer_Move;
}
else {
	sprite_index = sPlayer_Idle;	
}

// Face correct direction
var _signMouse = sign(mouse_x - x);
if (_signMouse != 0) {
	image_xscale = _signMouse;	
}

// Animation speed
if (moveX != 0 && sign(moveX) != _signMouse) {
	image_speed = -1;	
}
else {
	image_speed = 1;	
}