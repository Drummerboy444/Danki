enum Enum_SpriteActions {
	IDLE,
	DIE,
	CAST,
	ATTACK,
	MOVE
}

// The tags are the strings that are appended to the sprite for the action key - for lookup.
map_spriteActionToTag = ds_map_create();
map_spriteActionToTag[? Enum_SpriteActions.IDLE] = "idle";
map_spriteActionToTag[? Enum_SpriteActions.DIE] = "die";
map_spriteActionToTag[? Enum_SpriteActions.CAST] = "cast";
map_spriteActionToTag[? Enum_SpriteActions.ATTACK] = "attack";
map_spriteActionToTag[? Enum_SpriteActions.MOVE] = "move";

enum Enum_SpriteDirection {
	RIGHT,
	UPRIGHT,
	UP,
	UPLEFT,
	LEFT,
	DOWNLEFT,
	DOWN,
	DOWNRIGHT
}

// The tags are the strings that are appended to the sprite for the direction key - for lookup.
map_spriteDirectionToTag = ds_map_create();
map_spriteActionToTag[? Enum_SpriteDirection.RIGHT] = "right";
map_spriteActionToTag[? Enum_SpriteDirection.UPRIGHT] = "upRight";
map_spriteActionToTag[? Enum_SpriteDirection.UP] = "up";
map_spriteActionToTag[? Enum_SpriteDirection.UPLEFT] = "upLeft";
map_spriteActionToTag[? Enum_SpriteDirection.LEFT] = "left";
map_spriteActionToTag[? Enum_SpriteDirection.DOWNLEFT] = "downLeft";
map_spriteActionToTag[? Enum_SpriteDirection.DOWN] = "down";
map_spriteActionToTag[? Enum_SpriteDirection.DOWNRIGHT] = "downRight";


arr_spriteTree = SpriteTree_New(
	Enum_SpriteActions.IDLE,
	[
		SpriteTree_New(Enum_SpriteActions.DIE, []),
		SpriteTree_New(Enum_SpriteActions.CAST, []),
		SpriteTree_New(Enum_SpriteActions.ATTACK, []),
		SpriteTree_New(Enum_SpriteActions.MOVE, [])
	]
);

map_spriteParentMap = ds_map_create();
map_spriteParentMap[? Enum_SpriteActions.IDLE] = noone;
SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(map_spriteParentMap, arr_spriteTree);
