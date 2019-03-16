enum Enum_Actions {
	FIND_TARGET,
	EVADE,
	APPROACH,
	CAST,
	RECEIVE_EFFECTS,
	BE_HITTABLE,
	BE_COLLIDABLE,
	RECEIVE_DAMAGE,
	DIE,
	length
}

map_ActionsToDefaultBehaviours = ds_map_create();

// AbilityCaster actions:
map_ActionsToDefaultBehaviours[? Enum_Actions.FIND_TARGET] = AbilityCaster_FIND_TARGET_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.EVADE] = AbilityCaster_EVADE_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.APPROACH] = AbilityCaster_APPROACH_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.CAST] = AbilityCaster_CAST_DEFAULT;
// Script to call on recieving an effect.
map_ActionsToDefaultBehaviours[? Enum_Actions.RECEIVE_EFFECTS] = AbilityCaster_RECEIVE_EFFECTS_DEFAULT;
// Script to call on getting hit.
map_ActionsToDefaultBehaviours[? Enum_Actions.BE_HITTABLE] = AbilityCaster_ON_HIT_DEFAULT;
// Script to call on getting collided into.
map_ActionsToDefaultBehaviours[? Enum_Actions.BE_COLLIDABLE] = AbilityCaster_ON_COLLISION_DEFAULT;

// Mortal actions:
// Script to call on receiving damage.
map_ActionsToDefaultBehaviours[? Enum_Actions.RECEIVE_DAMAGE] = Mortal_RECEIVE_DAMAGE_DEFAULT;
map_ActionsToDefaultBehaviours[? Enum_Actions.DIE] = Mortal_DIE_DEFAULT;