/// @description

// Resolution
enum RES {
	WIDTH = 320,
	HEIGHT = 180,
	SCALE = 4
}

// Create camera
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH / 2, RES.HEIGHT / 2);

// Set up view
view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);

// Inventory
invList = ds_list_create();

// Pause
pause = false;
pauseSurf = -1;

// Crafting menu
cMenuScroll = 0;
cMenuHeight = 0;
