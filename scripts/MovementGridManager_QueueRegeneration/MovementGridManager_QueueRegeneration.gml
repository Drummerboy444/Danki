/// function MovementGridManager_QueueRegeneration() This will queue a regeneration of grid for the instance argument.
var _id_mover = argument[0];

var _num_maxSize = MovementGridManager_GetGridSizeForInstance(_id_mover);

oMovementGridManager.map_regenerationQueued[? _num_maxSize] = true;
