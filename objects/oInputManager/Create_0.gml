enum enum_Actions {
	MOVE_UP,
	MOVE_DOWN,
	MOVE_LEFT,
	MOVE_RIGHT,
	LEFT_ABILITY,
	RIGHT_ABILITY,
	DASH,
}

enum enum_moveModes {
	FREEMOVE,
	DASHING,
	DASHED,
}

moveModes = enum_moveModes.FREEMOVE;

map_keyBindings = ds_map_create();
map_keyBindings[? enum_Actions.MOVE_UP] = ord("W");
map_keyBindings[? enum_Actions.MOVE_DOWN] = ord("S");
map_keyBindings[? enum_Actions.MOVE_LEFT] = ord("A");
map_keyBindings[? enum_Actions.MOVE_RIGHT] = ord("D");
map_keyBindings[? enum_Actions.DASH] = ord(" ");
map_keyBindings[? enum_Actions.LEFT_ABILITY] = mb_left;
map_keyBindings[? enum_Actions.RIGHT_ABILITY] = mb_right;
