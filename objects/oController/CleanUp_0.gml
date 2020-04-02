/// @description Insert description here

camera_destroy(view_camera);
ds_list_destroy(invList);

// Destroy pause surface
if (surface_exists(pauseSurf)) {
	surface_free(pauseSurf);	
}


