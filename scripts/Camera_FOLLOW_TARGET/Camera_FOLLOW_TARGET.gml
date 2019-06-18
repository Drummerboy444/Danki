#region Doc
/// @function Camera_FOLLOW_TARGET() Updates the camera to follow the camera's current target, based on current
///		variables.
#endregion

if(id_target == noone || !instance_exists(id_target)) {
	return;	
}

//Store old current position of oCamera.
var _num_oldX = x;
var _num_oldY = y;

//Calculate desired new position of oCamera.
var _num_newX = lerp(x, id_target.x, num_lerpFactor);
var _num_newY = lerp(y, id_target.y, num_lerpFactor);

//Calculate the difference between current and desired position.
var _num_diffX = _num_oldX - _num_newX;
var _num_diffY = _num_oldY - _num_newY;

//If the difference is too small, don't update. This stops camera jitter.
if (abs(_num_diffX) > num_jitterSmooth){
	
	x = _num_newX;
}

if (abs(_num_diffY) > num_jitterSmooth){
	
	y = _num_newY;
}
