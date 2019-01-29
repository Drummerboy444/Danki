switch (enum_currentCameraState)
{
	case enum_CameraStates.FOLLOW_PLAYER: 
		Camera_FOLLOW_TARGET(self);
	break;
	
	case enum_CameraStates.FOLLOW_NON_PLAYER:
		Camera_FOLLOW_TARGET(self);
	break;
}
