/// @function MovementData_New(terminusX, terminusY, id_instanceToMove, bool_linearMovement)
/// Creates new movement data.
/// @param {number} num_terminusX  Target X coordinate
/// @param {number} num_terminusY  Target Y coordinate
/// @param {id} id_instanceToMove     ID of instance to move
/// @param {bool} bool_linearMovement  Boolean on whether the movement should be linear rather than path
/// @return {MovementData}
var _num_terminusX = argument[0];
var _num_terminusY = argument[1];
var _id_instanceToMove = argument[2];
var _bool_linearMovement = argument_count < 4? false: argument[3];


return [_num_terminusX, _num_terminusY, _id_instanceToMove, _bool_linearMovement];
