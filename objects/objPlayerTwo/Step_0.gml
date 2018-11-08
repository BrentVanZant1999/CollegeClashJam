
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
	if keyboard_check(ord("M")){
		if (mySkinNum<objDataHolder.skinNums-1){
			mySkinNum++;
		}
	}
	else {
		mySkinNum = 0;
	}
			
}
switch(mySkinNum){
	case(0): 
	{
	object_set_sprite( 0, spr_esports1 );	
	}
	break;
	case(1): 
	{
	object_set_sprite( 0, spr_esports2 );	
	}
	break;
	case(2): 
	{
	object_set_sprite( 0, spr_esports3 );	
	}
	break;
	case(3): 
	{
	object_set_sprite( 0, spr_esports4 );	
	}
	break;
	case(4): 
	{
	object_set_sprite( 0, spr_esports5);	
	}
	break;
	case(5): 
	{
	object_set_sprite( 0, spr_esports6 );	
	}
	break;
}


