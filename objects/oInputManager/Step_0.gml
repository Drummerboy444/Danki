if (instance_exists(oPlayer)) {
	if (InputManager_CHECK_DOWN(Enum_PlayerActions.LEFT_ABILITY)){
		AbilityTreeManager_Cast_(mouse_x, mouse_y, Enum_Direction.LEFT);
	}
	if (InputManager_CHECK_DOWN(Enum_PlayerActions.RIGHT_ABILITY)){
		AbilityTreeManager_Cast_(mouse_x, mouse_y, Enum_Direction.RIGHT);
	}
}


//if (instance_exists(oPlayer)) {
//	AbilityTreeManager_Cast(
//		mouse_x,
//		mouse_y,
//		InputManager_CHECK_DOWN(Enum_PlayerActions.LEFT_ABILITY),
//		InputManager_CHECK_DOWN(Enum_PlayerActions.RIGHT_ABILITY)
//	)
//}
