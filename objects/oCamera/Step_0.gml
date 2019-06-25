if(!instance_exists(oPlayer)) Camera_SetTarget(oEnemy);

switch (enum_currentCameraState){
	
	case Enum_CameraStates.FOLLOW_PLAYER: 
	case Enum_CameraStates.FOLLOW_NON_PLAYER:
		Camera_FOLLOW_TARGET();
	break;
	
	case Enum_CameraStates.LOOK_AT_FOR:
		Camera_FOLLOW_TARGET();
		Camera_UPDATE_LOOK_TIMER();
	break;		
	
}

//Mange our shake pool, deactivate old shakes, flag the strongest shake.
Camera_MANAGE_SHAKES();
