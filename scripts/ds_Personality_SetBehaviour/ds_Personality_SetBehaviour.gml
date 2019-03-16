/// @function ds_Personality_SetBehaviour(enum_Action, ds_Personality_personality, scr_behaviour) Sets a behaviour for a certain action in a ds_Personality.
/// @param {enum} enum_Action The Action we want to set the behaviour on.
/// @param {ds_Personality} ds_Personality_personality The personality we are updating.
/// @param {scr} scr_behaviour The new behaviour.
/// @returns {bool} Behaviour updated.
var _enum_Action = argument[0];
var _ds_Personality_personality = argument[1];
var _scr_behaviour = argument[2];

if(!ds_exists(_any_input, ds_type_map)){
	return false;	
};

_ds_Personality_personality[? _enum_Action] = _scr_behaviour;

return true;