/// @description Craft item

// Get recipe
var _recipe = global.itemRecipe[item];
var _recipeSize = array_length_1d(_recipe);

// Deplete ingredients
for (var i = 0; i < _recipeSize; i++) {
	// Get ingredient data
	var _ingr = _recipe[i];
	var _item = _ingr[0];
	var _count = _ingr[1];
	
	// Get item array
	var _arr = inv_get_item_array(_item);
	
	// Reduce count
	_arr[@ 1] -= _count;
}

//Add crafted item to inventory
inv_add(item, 1); 
