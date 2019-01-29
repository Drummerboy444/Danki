#region Doc
/// @function Camera_FOLLOW_TARGET() Updates the camera to follow the camera's current target, based on current
///		variables.
#endregion

var _num_oldX = oCamera.x;
var _num_oldY = oCamera.y;

var _obj_target = oCamera.obj_target;
var _num_lerpFactor = oCamera.num_lerpFactor;

var _num_newX = lerp(_num_oldX, _obj_target.x, _num_lerpFactor);
var _num_newY = lerp(_num_oldY, _obj_target.y, _num_lerpFactor);

var _num_diffX = _num_oldX - _num_newX;
var _num_diffY = _num_oldY - _num_newY;


with (oCamera){
	
	if  _num_diffX < 0.5 xor _num_diffX > -0.5
		{
			x = _num_newX;
		}
	
	if _num_diffY < 0.5 xor _num_diffY > -0.5
		{
			y = _num_newY;
		}
}