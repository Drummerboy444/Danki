#region Doc
/// @function Camera_SetTarget(id_newTarget) Updates the camera to follow a new object.
/// @param {id} id_newTarget.
#endregion

var _id_newTarget = argument[0];

with (oCamera){
	id_target = _id_newTarget;
}
