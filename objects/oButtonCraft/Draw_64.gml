/// @description 

// Inherit the parent event
event_inherited();

// Crafting animation
if (craftAnim > 0) {
	draw_rectangle(x, y, x + width * craftAnim, y + height, 0);	
}

// Properties
var _margin = 4;

// Calculate image scale
var _size = 8;
var _sizeNew = height - _margin * 2;
var _scale = _sizeNew / _size;

// Draw item
var _spr = global.itemSprite[item];

draw_sprite_ext(_spr, 0, x + _margin + _sizeNew / 2, y + _margin + _sizeNew / 2,
	_scale, _scale, 0, c_white, 1);

// Draw name
var _name = global.itemName[item];

draw_set_font(ftUI);

draw_text(x + _margin * 2 + _sizeNew, y + _margin + 2, _name);