
switch (enum_currentCameraState)
{
	case Enum_CameraStates.FOLLOW_PLAYER: 
	case Enum_CameraStates.FOLLOW_NON_PLAYER:
		Camera_FOLLOW_TARGET();
	break;
	
	case Enum_CameraStates.LOOK_AT_FOR:
		Camera_FOLLOW_TARGET();
		Camera_UPDATE_TIMER();
	break;
}

if bool_isShaking {
	Camera_UPDATE_SHAKE();
}
