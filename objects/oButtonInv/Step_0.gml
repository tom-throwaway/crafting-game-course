/// @description 

// Remove
if (hover && rclick) {
	// Get array
	var _arr = oController.invList[| slotID];
	
	if (is_array(_arr)) {
		// Re-activate player
		instance_activate_object(oPlayer);
		
		// Drop items
		var _item = _arr[0];
		var _count = _arr[1];
		
		repeat (_count) {
			// Item position
			var _x = oPlayer.x + irandom_range(12, 20);
			var _y = oPlayer.y + irandom_range(12, 20);
			
			// Create oItem
			var _inst = instance_create_layer(_x, _y, "Instances", oItem);
			
			// Set item properties
			with (_inst) {
				type = _item;
				sprite_index = global.itemSprite[_item];
				z = -20;
			}
		}
		
		// Deactivate player and items
		instance_deactivate_object(oPlayer);
		instance_deactivate_object(oItem);
		
		// Remove
		inv_remove(slotID);
	}
}
