/// @function ds_Personality_SetBehaviour(enum_action, ds_Personality_personality, scr_behaviour) Sets a behaviour for a certain action in a ds_Personality.
/// @param {enum} enum_action The action we want to set the behaviour on.
/// @param {ds_Personality} ds_Personality_personality The personality we are updating.
/// @param {scr} scr_behaviour The new behaviour.
/// @returns {bool} Behaviour updated.
var _enum_action = argument[0];
var _ds_Personality_personality = argument[1];
var _scr_behaviour = argument[2];

if(!ds_Personality_InstanceOf(_ds_Personality_personality)){
	ErrorHandler_Error(typeof(_ds_Personality_personality) + _ds_Personality_personality + " not a ds_Personality.");
	return false;	
}

_ds_Personality_personality[? _enum_action] = _scr_behaviour;

return true;