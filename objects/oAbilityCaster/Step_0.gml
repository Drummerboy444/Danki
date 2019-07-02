for(var i = 0; i < Enum_Actions.length; i++){
	if(ds_Agenda_Includes(ds_Agenda_agenda, i)){
		var _scr_behaviour = ds_Personality_GetBehaviour(i, ds_Personality_personality);
		script_execute(_scr_behaviour);
	}
}


// Handle Stun
if (AbilityCaster_CheckInstanceHasEffect(id, Enum_Effects.STUN)) {
	MovementManager_ClearMovement(id);
} else if (AbilityCaster_CheckInstanceHasEffect(id, Enum_Effects.DASH)) {
	var _list_ds_DashEffectData_data = AbilityCaster_GetEffectsByType(id, Enum_Effects.DASH);
	var _ds_DashEffectData_data = _list_ds_DashEffectData_data[| 0];
	ds_list_destroy(_list_ds_DashEffectData_data);
	if (!ds_DashEffectData_IsRecovering(_ds_DashEffectData_data)) {
		var _num_angle = ds_DashEffectData_GetAngle(_ds_DashEffectData_data);
		var _num_speed = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.SPEED);
		var _num_moveX = lengthdir_x(_num_speed, _num_angle);
		var _num_moveY = lengthdir_y(_num_speed, _num_angle);
		MovementManager_QueueMovement(
			MovementData_New(
				x + _num_moveX,
				y + _num_moveY,
				id,
				Enum_MovementType.LINEAR_SLIDING
			)
		);
		return;
	}
}