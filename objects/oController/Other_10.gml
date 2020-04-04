/// @description Create Inv UI

#region Inventory
var _margin = 10;
var _sep = 4;
var _cellSize = 24;

// Inventory items
var _sizeX = 6
var _sizeY = 2;

// Coordinates
var _invX = _margin;
var _invY = RES.HEIGHT - (_margin + _sep + _cellSize * _sizeY);

// Create buttons
var _x = 0;
var _y = 0;

for (var i = 0; i < INV_SIZE; i++) {
	// Button coordinates
	var _buttonX = _invX + (_sep + _cellSize) * _x;
	var _buttonY = _invY + (_sep + _cellSize) * _y;
	
	// Create button
	var _button = instance_create_depth(_buttonX, _buttonY, 0, oButtonInv);
	
	// Set properties
	with (_button) {
		slotID = i;
		width = _cellSize;
		height = _cellSize;
	}
	
	// Move position
	_x++;
	
	// Move to next row if needed
	if (_x == _sizeX) {
		_x = 0;
		_y++;
	}
}
#endregion

#region Crafting
// Properties
var _w = 120;
var _h = 26;
var _x = RES.WIDTH - (_w + _margin);
var _y = _sep;

var _titleH = 12;

// Create crafting buttons
var _arr = global.craftingMenu;
var _size = array_length_1d(_arr);

for (var i = 0; i < _size; i++) {
	var _item = _arr[i];
	
	// Title
	if (is_string(_item)) {
		createButtonTitle(_x, _y, _w, _titleH, _item);
		_y += (_titleH + _sep);
	}
	// Crafting button
	else {
		createButtonCraft(_x, _y, _w, _h, _item);
		_y += (_h + _sep);
	}
}

cMenuHeight = _y - RES.HEIGHT;
#endregion