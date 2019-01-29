enum enum_CameraStates{
	FOLLOW_PLAYER,
	FOLLOW_NON_PLAYER,
	LOOK_AT_FOR
}

//Initialise instance variables
enum_currentCameraState = enum_CameraStates.FOLLOW_PLAYER; //Default state
bool_isShaking = false;
id_target = oPlayer; //Default target
id_previousTarget = noone;
num_lookCounter = 0;
num_lookCounterEnd = 0;
num_shakeCounter = 0;
num_shakeCounterEnd = 0;
num_shakeIntensity = 0;

//Settings
num_lerpFactor = 0.1; //1 = perfect tracking. Smaller values = more camera lag and smoothing.
num_deadZoneSize = 0; //How far from the center of the screen the player needs to move before camera tracking.
num_jitterSmooth = 0.3; //Higher value = more jitter smoothing, but less accurate tracking.

//Set GMS view
camera_set_view_border(
	view_camera[0],
	(view_wport[0] / 2) + num_deadZoneSize,
	(view_hport[0] / 2) + num_deadZoneSize
	);
	