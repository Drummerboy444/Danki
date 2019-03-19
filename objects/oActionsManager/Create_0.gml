enum Enum_Actions {
	FIND_TARGET,
	ATTACK,
	DEFEND,
	ADVANCE,
	RETREAT,
	EVADE,
	length
}

map_ActionsToDefaultBehaviours = ds_map_create();

// AbilityCaster actions:
map_ActionsToDefaultBehaviours[? Enum_Actions.FIND_TARGET] = AbilityCaster_FIND_TARGET_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.ATTACK] = AbilityCaster_ATTACK_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.DEFEND] = AbilityCaster_DEFEND_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.ADVANCE] = AbilityCaster_ADVANCE_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.RETREAT] = AbilityCaster_RETREAT_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.EVADE] = AbilityCaster_EVADE_DEFAULT;
