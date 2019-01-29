Player_Move(
	InputManager_CHECK_DOWN(map_keyBindings[? enum_Actions.MOVE_UP]),
	InputManager_CHECK_DOWN(map_keyBindings[? enum_Actions.MOVE_DOWN]),
	InputManager_CHECK_DOWN(map_keyBindings[? enum_Actions.MOVE_LEFT]),
	InputManager_CHECK_DOWN(map_keyBindings[? enum_Actions.MOVE_RIGHT]),
	InputManager_CHECK_PRESSED(map_keyBindings[? enum_Actions.DASH])
);
