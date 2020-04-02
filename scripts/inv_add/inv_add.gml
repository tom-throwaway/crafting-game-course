/// @arg item
/// @arg count

var _item = argument0;
var _count = argument1;

var _list = oController.invList;
var _listSize = ds_list_size(_list);

for (var i = 0; i < _listSize; i++) {
	// Get array
	var _arr = _list[| i];
	
	// Increase count if matching
	if (_arr[0] == _item) {
		_arr[@ 1] += _count;
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