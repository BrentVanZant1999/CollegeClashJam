if (isOn) {
	var h = 0
	var v = 0
	actionPressed = false
	    gamepad_set_axis_deadzone(4, 0.3)
	    h = gamepad_axis_value(4, gp_axislh)
	    v = gamepad_axis_value(4, gp_axislv)
	    actionPressed = gamepad_button_check_pressed(4, gp_face1);
	    actionPressed1 = gamepad_button_check_pressed(4, gp_face2);
		actionPressed2 = gamepad_button_check_pressed(4, gp_face3);
		actionPressed3 = gamepad_button_check_pressed(4, gp_face4);
	
	    if keyboard_check(vk_left) h = -1
	    if keyboard_check(vk_right) h = 1
	    if keyboard_check(vk_up) v = -1
	    if keyboard_check(vk_down) v = 1
	    actionPressed = actionPressed or keyboard_check_pressed(vk_rcontrol);

	if ( h == 1 ) {
		physics_apply_impulse(x, y,mySpeed, 0);	
	}
	if ( h == -1 ) {
		physics_apply_impulse(x, y, -mySpeed, 0);	
	}
	if ( v == 1 ) {
		physics_apply_impulse(x, y, 0, mySpeed);	
	}
	if ( v == -1 ) {
		physics_apply_impulse(x, y, 0,-mySpeed);	
	}
	
	if (actionPressed) {
		
	}
	else if (actionPressed1) {
		
	}
    else if (actionPressed2) {
		
	}
	else if (actionPressed3) {
		
	}
}
else {
	if keyboard_check(ord("M")){
		if (canPress) {
			if (mySkinNum<5){
				mySkinNum++;
			}
			else {
				mySkinNum = 0;
			}
		}
	}

			
}
sprite_index = mySkinNum;
