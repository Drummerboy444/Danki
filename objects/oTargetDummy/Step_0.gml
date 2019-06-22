if(instance_exists(oPlayer)) {
	MovementManager_QueueMovement(MovementData_New(oPlayer.x, oPlayer.y, id, Enum_MovementType.DYNAMIC, oPlayer.id));
	OneShotService_Cast(id_oneShotService, Enum_Abilities.YELLOW_CIRCLE, oPlayer.x, oPlayer.y, false);
}
