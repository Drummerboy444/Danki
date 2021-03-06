enum Enum_SpriteActions {
	IDLE,
	DIE,
	CAST,
	CAST_SPELL,
	CAST_MELEE,
	MOVE,
	MOVE_SIDE,
	MOVE_UP,
	MOVE_DOWN
}

// The tags are the strings that are appended to the sprite for theaction key - for lookup.
map_spriteActionToTag = ds_map_create();
map_spriteActionToTag[? Enum_SpriteActions.IDLE] = "idle";
map_spriteActionToTag[? Enum_SpriteActions.DIE] = "die";
map_spriteActionToTag[? Enum_SpriteActions.CAST] = "cast";
map_spriteActionToTag[? Enum_SpriteActions.CAST_SPELL] = "castSpell";
map_spriteActionToTag[? Enum_SpriteActions.CAST_MELEE] = "castMelee";
map_spriteActionToTag[? Enum_SpriteActions.MOVE] = "move";
map_spriteActionToTag[? Enum_SpriteActions.MOVE_SIDE] = "moveSide";
map_spriteActionToTag[? Enum_SpriteActions.MOVE_UP] = "moveUp";
map_spriteActionToTag[? Enum_SpriteActions.MOVE_DOWN] = "moveDown";

arr_spriteTree = SpriteTree_New(
	Enum_SpriteActions.IDLE,
	[
		SpriteTree_New(Enum_SpriteActions.DIE, []),
		SpriteTree_New(
			Enum_SpriteActions.CAST,
			[
				SpriteTree_New(Enum_SpriteActions.CAST_SPELL, []),
				SpriteTree_New(Enum_SpriteActions.CAST_MELEE, []),
			]
		),
		SpriteTree_New(
			Enum_SpriteActions.MOVE,
			[
				SpriteTree_New(Enum_SpriteActions.MOVE_SIDE, []),
				SpriteTree_New(Enum_SpriteActions.MOVE_UP, []),
				SpriteTree_New(Enum_SpriteActions.MOVE_DOWN, []),
			]
		)
	]
);

map_spriteParentMap = ds_map_create();
map_spriteParentMap[? Enum_SpriteActions.IDLE] = noone;
SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(map_spriteParentMap, arr_spriteTree);
