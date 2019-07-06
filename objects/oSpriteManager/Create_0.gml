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

ds_map_spriteActionToTag = ds_map_create();
ds_map_spriteActionToTag[? Enum_SpriteActions.IDLE] = "idle";
ds_map_spriteActionToTag[? Enum_SpriteActions.IDLE_LEFT] = "idleLeft";
ds_map_spriteActionToTag[? Enum_SpriteActions.IDLE_RIGHT] = "idleRight";
ds_map_spriteActionToTag[? Enum_SpriteActions.DIE] = "die";
ds_map_spriteActionToTag[? Enum_SpriteActions.CAST] = "cast";
ds_map_spriteActionToTag[? Enum_SpriteActions.CAST_SPELL] = "castSpell";
ds_map_spriteActionToTag[? Enum_SpriteActions.CAST_MELEE] = "castMelee";
ds_map_spriteActionToTag[? Enum_SpriteActions.MOVE] = "move";
ds_map_spriteActionToTag[? Enum_SpriteActions.MOVE_LEFT] = "moveLeft";
ds_map_spriteActionToTag[? Enum_SpriteActions.MOVE_RIGHT] = "moveRight";
ds_map_spriteActionToTag[? Enum_SpriteActions.MOVE_UP] = "moveUp";
ds_map_spriteActionToTag[? Enum_SpriteActions.MOVE_DOWN] = "moveDown";

arr_spriteTree = [
	Enum_SpriteActions.IDLE, [
		[
			Enum_SpriteActions.DIE, []
		],
		[
			Enum_SpriteActions.IDLE_LEFT, []
		],
		[
			Enum_SpriteActions.IDLE_RIGHT, []
		],
		[
			Enum_SpriteActions.CAST, [
				[Enum_SpriteActions.CAST_SPELL, []],
				[Enum_SpriteActions.CAST_MELEE, []],
			]
		],
		[
			Enum_SpriteActions.MOVE, [
				[Enum_SpriteActions.MOVE_LEFT, []],
				[Enum_SpriteActions.MOVE_RIGHT, []],
				[Enum_SpriteActions.MOVE_UP, []],
				[Enum_SpriteActions.MOVE_DOWN, []],
			]
		]
	]
];

ds_map_spriteParentMap = ds_map_create();
ds_map_spriteParentMap[? Enum_SpriteActions.IDLE] = noone;
SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(ds_map_spriteParentMap, arr_spriteTree);
