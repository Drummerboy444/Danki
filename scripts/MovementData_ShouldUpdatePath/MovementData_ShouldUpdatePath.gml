/// @function MovementData_ShouldUpdatePath(MovementData_data) Returns true if the movement data needs its
///		path updating.
/// @param {MovementData} MovementData_data The movement data to check.
/// @returns {bool} True if the movement data needs its path updating.
var _MovementData_data = argument[0];


var _enum_movementType = MovementData_GetMovementType(_MovementData_data);
return _enum_movementType == Enum_MovementType.PATHING
	|| _enum_movementType == Enum_MovementType.DYNAMIC;
