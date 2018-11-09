
if (isOn) {

	var h = 0
	var v = 0
	actionPressed = false


	    gamepad_set_axis_deadzone(5, 0.3)
	    h = gamepad_axis_value(5, gp_axislh)
	    v = gamepad_axis_value(5, gp_axislv)
	    actionPressed = gamepad_button_check_pressed(5, gp_face1);
    
	    if keyboard_check(ord("A")) h = -1
	    if keyboard_check(ord("D")) h = 1
	    if keyboard_check(ord("W")) v = -1
	    if keyboard_check(ord("S")) v = 1
	    actionPressed = actionPressed or keyboard_check_pressed(vk_space);

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
}
else {
	if keyboard_check(ord("Z")){
		if (canPress) {
			if (mySkinNum<5){
				mySkinNum++;
			}
			else {
				mySkinNum = 0;
			}
			canPress = false;
			alarm[1] = 5; 
		}
	}
	
			
}
sprite_index = mySkinNum;
