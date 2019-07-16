enum Enum_SpriteActions {
	IDLE,
	IDLE_LEFT,
	IDLE_RIGHT,
	DIE,
	CAST,
	CAST_SPELL,
	CAST_MELEE,
	MOVE,
	MOVE_LEFT,
	MOVE_RIGHT,
	MOVE_UP,
	MOVE_DOWN
}

map_spriteActionToTag = ds_map_create();
map_spriteActionToTag[? Enum_SpriteActions.IDLE] = "idle";
map_spriteActionToTag[? Enum_SpriteActions.IDLE_LEFT] = "idleLeft";
map_spriteActionToTag[? Enum_SpriteActions.IDLE_RIGHT] = "idleRight";
map_spriteActionToTag[? Enum_SpriteActions.DIE] = "die";
map_spriteActionToTag[? Enum_SpriteActions.CAST] = "cast";
map_spriteActionToTag[? Enum_SpriteActions.CAST_SPELL] = "castSpell";
map_spriteActionToTag[? Enum_SpriteActions.CAST_MELEE] = "castMelee";
map_spriteActionToTag[? Enum_SpriteActions.MOVE] = "move";
map_spriteActionToTag[? Enum_SpriteActions.MOVE_LEFT] = "moveLeft";
map_spriteActionToTag[? Enum_SpriteActions.MOVE_RIGHT] = "moveRight";
map_spriteActionToTag[? Enum_SpriteActions.MOVE_UP] = "moveUp";
map_spriteActionToTag[? Enum_SpriteActions.MOVE_DOWN] = "moveDown";

arr_spriteTree = ds_SpriteTree_New(
	Enum_SpriteActions.IDLE,
	[
		ds_SpriteTree_New(Enum_SpriteActions.DIE, []),
		ds_SpriteTree_New(Enum_SpriteActions.IDLE_LEFT, []),
		ds_SpriteTree_New(Enum_SpriteActions.IDLE_RIGHT, []),
		ds_SpriteTree_New(
			Enum_SpriteActions.CAST,
			[
				ds_SpriteTree_New(Enum_SpriteActions.CAST_SPELL, []),
				ds_SpriteTree_New(Enum_SpriteActions.CAST_MELEE, []),
			]
		),
		ds_SpriteTree_New(
			Enum_SpriteActions.MOVE,
			[
				ds_SpriteTree_New(Enum_SpriteActions.MOVE_LEFT, []),
				ds_SpriteTree_New(Enum_SpriteActions.MOVE_RIGHT, []),
				ds_SpriteTree_New(Enum_SpriteActions.MOVE_UP, []),
				ds_SpriteTree_New(Enum_SpriteActions.MOVE_DOWN, []),
			]
		)
	]
);

map_spriteParentMap = ds_map_create();
map_spriteParentMap[? Enum_SpriteActions.IDLE] = noone;
SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(map_spriteParentMap, arr_spriteTree);
