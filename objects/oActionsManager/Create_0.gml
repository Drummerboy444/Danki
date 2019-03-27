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
map_ActionsToDefaultBehaviours[? Enum_Actions.FIND_TARGET] = Utility_NoOp;
map_ActionsToDefaultBehaviours[? Enum_Actions.ATTACK] = Utility_NoOp;
map_ActionsToDefaultBehaviours[? Enum_Actions.DEFEND] = Utility_NoOp;
map_ActionsToDefaultBehaviours[? Enum_Actions.ADVANCE] = Utility_NoOp;
map_ActionsToDefaultBehaviours[? Enum_Actions.RETREAT] = Utility_NoOp;
map_ActionsToDefaultBehaviours[? Enum_Actions.EVADE] = Utility_NoOp;
