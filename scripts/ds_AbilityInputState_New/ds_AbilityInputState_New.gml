/// @function ds_AbilityInputState_New() Creates a new ds_AbilityInputState.
/// @returns {ds_AbilityInputState} The new ds_AbilityInputState.


var _ds_AbilityInputState_new = ds_map_create();
_ds_AbilityInputState_new[? "ready"] = false;
_ds_AbilityInputState_new[? "successful"] = false;
return _ds_AbilityInputState_new;
