enum enum_CameraStates{
	FOLLOW_PLAYER,
	FOLLOW_NON_PLAYER
}

//Initialise instance variables
var enum_currentCameraState = enum_CameraStates.FOLLOW_PLAYER;
var bool_isShaking = false;
var obj_target = oPlayer;
var num_lerpFactor = 1;

//Set GMS view
camera_set_view_border(view_camera[0], (view_wport[0] / 2) + 40, (view_hport[0]) + 40);