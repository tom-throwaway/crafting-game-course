
if (hp <= 0) {
	instance_destroy();
	
	 // Pick number of resources to create
	 var _resCount = choose(1, 1, 1, 1, 2, 2, 3);
	 
	 var _resMax = array_length_1d(res);
	 
	 repeat (_resCount) {
		// Get random resource
		var _resID = irandom(_resMax - 1);
		var _res = res[_resID];
		
		// Item position
		var _x = x + irandom_range(-4, 4);
		var _y = y + irandom_range(-4, 4);
		
		// Create item
		var _inst = instance_create_layer(_x, _y, "Instances", oItem);
		with (_inst) {
			type = _res;
			sprite_index = global.itemSprite[_res];
			
			z = -other.sprite_height / 2;
		}
	 }
}

