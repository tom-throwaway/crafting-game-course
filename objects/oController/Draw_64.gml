
// Hearts
var _margin = 4;
var _startX = _margin;
var _startY = _margin;

var _size = sprite_get_height(sHeart);
var _dist = _size + _margin;

with (oPlayer) {
	// Loop
	for (var i = 0; i < hp; i++) {
		// Sub-image to draw
		var _subImg = 0;
		
		if (hp - i <= 0.5) {
			_subImg = 1;	
		}
		
		// Draw heart
		draw_sprite(sHeart, _subImg, _startX + _dist * i, _startY);
	}
}