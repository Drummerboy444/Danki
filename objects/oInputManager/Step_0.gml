if (instance_exists(oPlayer)) {
	if (InputManager_CHECK_PRESSED(Enum_PlayerActions.LEFT_ABILITY)){
		OneShotService_Cast(oPlayer.id_oneShotService, Enum_Abilities.SHIELD_BASH, mouse_x, mouse_y);
	}
	if (InputManager_CHECK_DOWN(Enum_PlayerActions.RIGHT_ABILITY)){
		OneShotService_Cast(oPlayer.id_oneShotService, Enum_Abilities.TWIN_STRIKE, mouse_x, mouse_y);
	}
}
