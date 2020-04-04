/// @description

if (hover) {
	// Properties
	var _size = 8;
	var _margin = 4;
	var _cellSize = _size + _margin * 2;
	
	var _x = device_mouse_x_to_gui(0) + 4;
	var _y = device_mouse_y_to_gui(0);
	
	// Recipe array
	var _recipe = global.itemRecipe[item];
	var _recipeSize = array_length_1d(_recipe);
	
	// Draw background
	draw_set_color(c_dkgray);
	draw_rectangle(_x, _y, _x + _cellSize * _recipeSize, _y + _cellSize, 0);
	draw_set_color(c_white);
	
	// Loop and draw items
	for (var i = 0; i < _recipeSize; i++) {
		// Position
		var _dx = _x + _cellSize * i;
		var _dy = _y;
		
		// Ingredients
		var _ingr = _recipe[i];
		var _item = _ingr[0];
		var _count = _ingr[1];
		
		var _spr = global.itemSprite[_item];
		
		// Draw item
		draw_sprite(_spr, 0, _dx + _cellSize / 2, _dy + _cellSize / 2);
		
		// Draw count
		draw_set_font(ftUI);
		draw_text(_dx + _cellSize * 0.8, _dy + _cellSize * 0.7, _count);
	}
}
