
switch (enum_currentCameraState)
{
	case enum_CameraStates.FOLLOW_PLAYER: 
	case enum_CameraStates.FOLLOW_NON_PLAYER:
		Camera_FOLLOW_TARGET();
	break;
	
	case enum_CameraStates.LOOK_AT_FOR:
		Camera_FOLLOW_TARGET();
		Camera_UPDATE_TIMER();
	break;
}

if bool_isShaking {
	Camera_UPDATE_SHAKE();
}
