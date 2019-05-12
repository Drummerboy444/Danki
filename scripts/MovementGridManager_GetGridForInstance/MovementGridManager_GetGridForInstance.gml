/// @function MovementGridManager_GetGridForInstance(id_instance) Returns the appropriate grid for the instance from the
/// movement grid manager by rounding its sprite size up to the nearest "maxSize".
/// @param {id} id_instance The instance to get the grid for.
/// @returns {mp_grid} The grid.
var _id_instance = argument[0];

var _num_size = sprite.sprite_width