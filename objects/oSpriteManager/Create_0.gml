enum Enum_SpriteActions {
	IDLE,
	DIE,
	CAST,
	MOVE,
	MOVE_LEFT,
	MOVE_RIGHT,
	MOVE_UP,
	MOVE_DOWN
}

ds_map_actionsToStrings = ds_map_create();
ds_map_actionsToStrings[? Enum_SpriteActions.IDLE] = "idle";
ds_map_actionsToStrings[? Enum_SpriteActions.DIE] = "die";
ds_map_actionsToStrings[? Enum_SpriteActions.CAST] = "cast";
ds_map_actionsToStrings[? Enum_SpriteActions.MOVE] = "move";
ds_map_actionsToStrings[? Enum_SpriteActions.MOVE_LEFT] = "moveLeft";
ds_map_actionsToStrings[? Enum_SpriteActions.MOVE_RIGHT] = "moveRight";
ds_map_actionsToStrings[? Enum_SpriteActions.MOVE_UP] = "moveUp";
ds_map_actionsToStrings[? Enum_SpriteActions.MOVE_DOWN] = "moveDown";

arr_spriteTree = [
	Enum_SpriteActions.IDLE, [
		[
			Enum_SpriteActions.DIE, []
		],
		[
			Enum_SpriteActions.CAST, []],
		[
			Enum_SpriteActions.MOVE, [
				[Enum_SpriteActions.MOVE_LEFT, []],
				[Enum_SpriteActions.MOVE_RIGHT, []],
				[Enum_SpriteActions.MOVE_UP, []],
				[Enum_SpriteActions.MOVE_DOWN, []],
			]
		]
	]
]