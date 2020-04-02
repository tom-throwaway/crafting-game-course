/// @description Create Inv UI

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