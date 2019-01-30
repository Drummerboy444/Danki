/// @function Camera_MANAGE_SHAKES(arr_oShake) Updates and manages the given oShake array to behave as a pool
/// @param {[]} oShake array to update and manage.

var arr_shakes = argument[0];

//TODO: pooling logic
//		All but the most powerful shake must be set to !bool_isApplying.
//		Any shake with duration remaining needs to be set to bool_isActive.
//		Keep track of the next shake that should be overwritten when a "new" shake is wanted.