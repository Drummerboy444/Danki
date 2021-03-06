/// @function Camera_LookAtFor(id_target, num_duration) Sets the camera to look at an object for a given duration
///		in frames.
/// @param {id} id_newTarget The instance id of the desired target.
/// @param {num} num_frameDuration The ammount of frames to look at the target for.

var _id_target = argument[0];
var _num_duration = argument[1];

with (oCamera){

	id_previousTarget = id_target;
	id_target = _id_target;

	enum_currentCameraState = Enum_CameraStates.LOOK_AT_FOR;
	num_lookCounter = _num_duration;
}
