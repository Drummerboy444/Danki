/// @function MovementManager_QueueMovement(MovementData_data)  Adds the instanceToMove to the
/// movement manager buffer with the target location of terminusX, terminusY
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

// Delete any old entry for instanceToMove
MovementManager_ClearMovement(_id_instanceToMove);

// Add movement data from parameter
ds_list_add(oMovementManager.list_MovementData_movementBuffer, _MovementData_data);
