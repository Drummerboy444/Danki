/// @function Camera_UPDATE_LOOK_TIMER() Updates the oCamera's internal timer to end the LookAtFor state

if (num_lookCounter <= 0){
	
	enum_currentCameraState = Enum_CameraStates.FOLLOW_PLAYER;
	num_lookCounter = 0;
	if(instance_exists(id_previousTarget)){
		id_target = id_previousTarget;
		id_previousTarget = noone;
	} else if (instance_exists(oPlayer)) {
		id_target = oPlayer.id;
		id_previousTarget = noone;
	} else {
		id_target = noone;	
	}
}

else {
	num_lookCounter--;
}
