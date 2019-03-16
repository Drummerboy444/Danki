/// @function ds_Personality_CreateDefault() Creates a new ds_Personality with all default scripts.
/// @returns {ds_Personality} The default personality.

var ds_Personality_default = ds_map_create();

ds_map_copy(ds_Personality_default, map_ActionsToDefaultBehaviours);

return ds_Personality_default;