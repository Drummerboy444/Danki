#region Check up move
if (InputManager_CHECK_INPUT(map_keyBindings[? enum_Actions.MOVE_UP])){
	Player_MoveUp();
}
#endregion
#region Check down move
if (InputManager_CHECK_INPUT(map_keyBindings[? enum_Actions.MOVE_DOWN])){
	Player_MoveDown();
}
#endregion
#region Check left move
if (InputManager_CHECK_INPUT(map_keyBindings[? enum_Actions.MOVE_LEFT])){
	Player_MoveLeft();
}
#endregion
#region Check right move
if (InputManager_CHECK_INPUT(map_keyBindings[? enum_Actions.MOVE_RIGHT])){
	Player_MoveRight();
}
#endregion
#region Check left ability
if (InputManager_CHECK_INPUT(map_keyBindings[? enum_Actions.LEFT_ABILITY])){
	Player_LeftAbility();
}
#endregion
#region Check right ability
if (InputManager_CHECK_INPUT(map_keyBindings[? enum_Actions.RIGHT_ABILITY])){
	Player_RightAbility();
}
#endregion
#region Check dash
if (InputManager_CHECK_INPUT(map_keyBindings[? enum_Actions.DASH])){
	Player_Dash();
}
#endregion