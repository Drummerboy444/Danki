/// @function MovementManager_QueueMovement(MovementData_data)  Adds the thingToMove to the
/// movement manager buffer with the target location of terminusX, terminusY
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


ds_list_add(oMovementManager.list_movementBuffer, _MovementData_data);
