// Enumerable of all movement actions, bound by the below map
enum Enum_PlayerActions {
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
map_keyBindings[? Enum_PlayerActions.MOVE_UP] = InputKey_New(ord("W"), Enum_InputType.KEYBOARD);
map_keyBindings[? Enum_PlayerActions.MOVE_DOWN] = InputKey_New(ord("S"), Enum_InputType.KEYBOARD);
map_keyBindings[? Enum_PlayerActions.MOVE_LEFT] = InputKey_New(ord("A"), Enum_InputType.KEYBOARD);
map_keyBindings[? Enum_PlayerActions.MOVE_RIGHT] = InputKey_New(ord("D"), Enum_InputType.KEYBOARD);
map_keyBindings[? Enum_PlayerActions.DASH] = InputKey_New(ord(" "), Enum_InputType.KEYBOARD);
map_keyBindings[? Enum_PlayerActions.LEFT_ABILITY] = InputKey_New(mb_left, Enum_InputType.MOUSE);
map_keyBindings[? Enum_PlayerActions.RIGHT_ABILITY] = InputKey_New(mb_right, Enum_InputType.MOUSE);
