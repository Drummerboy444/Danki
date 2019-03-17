enum Enum_Actions {
	FIND_TARGET,
	EVADE,
	APPROACH,
	CAST,
	length
}

map_ActionsToDefaultBehaviours = ds_map_create();

// AbilityCaster actions:
map_ActionsToDefaultBehaviours[? Enum_Actions.FIND_TARGET] = AbilityCaster_FIND_TARGET_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.EVADE] = AbilityCaster_EVADE_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.APPROACH] = AbilityCaster_APPROACH_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.CAST] = AbilityCaster_CAST_DEFAULT;