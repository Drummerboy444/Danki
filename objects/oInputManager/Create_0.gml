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

enum Enum_InputType {
	KEYBOARD,
	MOUSE
}

// Map from actions to [key binding, input type] designed to be editable
map_keyBindings = ds_map_create();
map_keyBindings[? Enum_Actions.MOVE_UP] = [ord("W"), Enum_InputType.KEYBOARD];
map_keyBindings[? Enum_Actions.MOVE_DOWN] = [ord("S"), Enum_InputType.KEYBOARD];
map_keyBindings[? Enum_Actions.MOVE_LEFT] = [ord("A"), Enum_InputType.KEYBOARD];
map_keyBindings[? Enum_Actions.MOVE_RIGHT] = [ord("D"), Enum_InputType.KEYBOARD];
map_keyBindings[? Enum_Actions.DASH] = [ord(" "), Enum_InputType.KEYBOARD];
map_keyBindings[? Enum_Actions.LEFT_ABILITY] = [mb_left, Enum_InputType.MOUSE];
map_keyBindings[? Enum_Actions.RIGHT_ABILITY] = [mb_right, Enum_InputType.MOUSE];
