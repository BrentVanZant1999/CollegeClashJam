if (other.isOn) {
	other.isOn = false;
	other.alarmTimer = other.alarmTimerBase;
	var curAngle = point_direction(0, 0, phy_speed_x, phy_speed_y);
	xBoost = lengthdir_x(boostSpeed,curAngle); 
    yBoost = lengthdir_y(boostSpeed,curAngle); 
	physics_apply_impulse(x, y, xBoost, yBoost);	
}