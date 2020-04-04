/// @description 

// Check count
var _arr = oController.invList[| slotID];

if (is_array(_arr)) {
	var _count = _arr[1];
	
	// Remove
	if (_count <= 0) {
		inv_remove(slotID);	
	}
}
