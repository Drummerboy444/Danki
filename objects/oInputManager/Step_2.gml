Player_Move(
	InputManager_CHECK_DOWN(Enum_PlayerActions.MOVE_UP),
	InputManager_CHECK_DOWN(Enum_PlayerActions.MOVE_DOWN),
	InputManager_CHECK_DOWN(Enum_PlayerActions.MOVE_LEFT),
	InputManager_CHECK_DOWN(Enum_PlayerActions.MOVE_RIGHT),
	InputManager_CHECK_PRESSED(Enum_PlayerActions.DASH)
);
