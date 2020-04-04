/// @description 

// Mouse input
var _held = hover && mouse_check_button(mb_left);

// Click to craft
if (_held && craftAnim <= 0) {
	// Get recipe
	var _recipe = global.itemRecipe[item];
	var _recipeSize = array_length_1d(_recipe);
	
	// Check ingredients
	var _canCraft = true;
	
	for (var i = 0; i < _recipeSize; i++) {
		// Get ingredient data
		var _ingr = _recipe[i];
		var _item = _ingr[0];
		var _count = _ingr[1];
		
		// Get item array
		var _arr = inv_get_item_array(_item);
		if (!is_array(_arr)) {
			_canCraft = false;
			break;
		}
		
		// Check count
		var _arrCount = _arr[1];
		if (_arrCount < _count) {
			_canCraft = false;
			break;
		}
	}
	
	// Start crafting animation
	if (_canCraft) {
		craftAnim = 0.02;
	}
}

// Crafting animation
if (_held && craftAnim > 0) {
	craftAnim += 0.02;
	
	// Craft
	if (craftAnim >= 1) {
		event_user(0);
		craftAnim = 0;
	}
}
else {
	craftAnim = 0;	
}


























