space = keyboard_check_pressed(vk_space);
mouse = mouse_check_button_pressed(mb_left);

if ((! instance_exists(oYes)) && (! instance_exists(oNo))) {
	if ((space == true) || (mouse == true)) {
		instance_destroy();
	}
}