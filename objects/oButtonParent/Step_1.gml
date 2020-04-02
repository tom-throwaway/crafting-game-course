
// Input
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

hover = point_in_rectangle(_mouseX, _mouseY, x, y, x + width, y + height);

lclick = mouse_check_button_pressed(mb_left);
rclick = mouse_check_button_pressed(mb_right);
