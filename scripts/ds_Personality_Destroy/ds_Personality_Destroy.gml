/// @function ds_Personality_Destroy(ds_Personality_personality) Destroy a ds_Personality.
/// @param {ds_Personality_personality} The ds_Personalty to destroy.
/// @returns {bool} Asserts input was Personality and it was destoyed.
var _ds_Personality_personality = argument[0];

if(!ds_exists(_ds_Personality_personality, ds_type_map)){
	return false;
}

ds_map_destroy(_ds_Personality_personality);
return true;