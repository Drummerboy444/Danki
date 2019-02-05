
switch (enum_currentCameraState)
{
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
Shake_MANAGE_SHAKES(arr_oShake);

//Update shakes, the strongest shake will apply itself to us.
for (var i = 0; i < 5; i++){
	Shake_UPDATE(arr_oShake[i]);
}

