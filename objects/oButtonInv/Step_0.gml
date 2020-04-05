/// @description 

#region Use
if (hover && lclick) {
	// Get array
	var _arr = oController.invList[| slotID];
	
	if (is_array(_arr)) {
		// Vars
		var _item = _arr[0];
		var _count = _arr[1];
		
		var _used = false;
		
		// Effect
		instance_activate_object(oPlayer);
		
		switch (_item) {
			case ITEM.POTION:
				with (oPlayer) {
					if (hp < hpMax) {
						hp++;
						_used = true;
						
						if (hp > hpMax) hp = hpMax;
					}
				}
			break;
			
			case ITEM.APPLE:
				with (oPlayer) {
					if (hp < hpMax) {
						hp += 0.5;
						_used = true;
					}
				}
			break;
		}
		
		instance_deactivate_object(oPlayer);
		
		// Used
		var _itemName = global.itemName[_item];
		if (_used) {
			// Reduce count
			_arr[@ 1]--;
			show_debug_message(_itemName + " was used");
		}
		else {
			show_debug_message(_itemName + " could not be used");	
		}
	}
}
#endregion

#region Drop
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
#endregion
