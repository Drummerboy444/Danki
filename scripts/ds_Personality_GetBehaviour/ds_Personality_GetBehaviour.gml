/// @function ds_Personality_GetBehaviour(enum_Action, ds_Personality_personality) Gets the behaviour for a certain action in a ds_Personality.
/// @param {enum} enum_Action The Action we want to get the behaviour for.
/// @param {ds_Personality} ds_Personality_personality The personality we are checking.
/// @returns {scr} The behaviour script.
var _enum_Action = argument[0];
var _ds_Personality_personality = argument[1];

if(!ds_Personality_InstanceOf(_ds_Personality_personality)){
	ErrorHandler_Error("Unable to get behaviour from argument of type " + typeof(_ds_Personality_personality));
	return noone;	
}

return _ds_Personality_personality[? _enum_Action];