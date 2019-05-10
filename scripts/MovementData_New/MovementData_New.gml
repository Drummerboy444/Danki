/// @function MovementData_New(terminusX, terminusY, id_instanceToMove, enum_movementType)
/// Creates new movement data.
/// @param {number} num_terminusX       Target X coordinate
/// @param {number} num_terminusY       Target Y coordinate
/// @param {id}     id_instanceToMove   ID of instance to move
/// @param {enum}   enum_movementType   The movement type of the movement data
/// @return {MovementData}
var _num_terminusX = argument[0];
var _num_terminusY = argument[1];
var _id_instanceToMove = argument[2];
var _enum_movementType = argument[3];


return [_num_terminusX, _num_terminusY, _id_instanceToMove, _enum_movementType];
