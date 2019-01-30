/// @function Camera_UPDATE_LOOK_TIMER() Updates the oCamera's internal timer to end the LookAtFor state

if num_lookCounter > num_lookCounterEnd{
	enum_currentCameraState = Enum_CameraStates.FOLLOW_PLAYER;
	num_lookCounter = 0;
	num_lookCounterEnd = 0;
	id_target = id_previousTarget;
	id_previousTarget = noone;
}

num_lookCounter++;