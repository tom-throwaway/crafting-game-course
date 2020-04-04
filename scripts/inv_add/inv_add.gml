/// @arg item
/// @arg count

var _item = argument0;
var _count = argument1;

var _list = oController.invList;
var _listSize = ds_list_size(_list);

// Add count to existing array
for (var i = 0; i < _listSize; i++) {
	// Get array
	var _arr = _list[| i];
	
	// Increase count if matching
	if (is_array(_arr) && _arr[0] == _item) {
		_arr[@ 1] += _count;
		return true;
	}
}

// Insert array
for (var i = 0; i < _listSize; i++) {
	// Get array
	var _arr = _list[| i];
	
	// Empty slot
	if (!is_array(_arr)) {
		_list[| i] = [_item, _count];
		return true;
	}
}

// Check inventory is not full
if (_listSize >= INV_SIZE) {
	return false;	
}

// Create new array
var _arr = [_item, _count];
ds_list_add(_list, _arr);
return true;