// Enumerable of all movement actions, bound by the below map
enum Enum_Actions {
	MOVE_UP,
	MOVE_DOWN,
	MOVE_LEFT,
	MOVE_RIGHT,
	LEFT_ABILITY,
	RIGHT_ABILITY,
	DASH,
}

// Map containing all keybindings designed to allow player overwrite
map_keyBindings = ds_map_create();
map_keyBindings[? Enum_Actions.MOVE_UP] = ord("W");
map_keyBindings[? Enum_Actions.MOVE_DOWN] = ord("S");
map_keyBindings[? Enum_Actions.MOVE_LEFT] = ord("A");
map_keyBindings[? Enum_Actions.MOVE_RIGHT] = ord("D");
map_keyBindings[? Enum_Actions.DASH] = ord(" ");
map_keyBindings[? Enum_Actions.LEFT_ABILITY] = mb_left;
map_keyBindings[? Enum_Actions.RIGHT_ABILITY] = mb_right;
