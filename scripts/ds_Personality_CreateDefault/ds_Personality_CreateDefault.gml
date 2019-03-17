/// @function ds_Personality_CreateDefault() Creates a new ds_Personality with all default scripts.
/// @returns {ds_Personality} The default personality.

var _ds_Personality_default = ds_map_create();

ds_map_copy(_ds_Personality_default, oActionsManager.map_ActionsToDefaultBehaviours);

return _ds_Personality_default;