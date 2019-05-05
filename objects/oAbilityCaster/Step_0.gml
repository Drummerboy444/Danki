for(var i = 0; i < Enum_Actions.length; i++){
	if(ds_Agenda_Includes(ds_Agenda_agenda, i)){
		var _scr_behaviour = ds_Personality_GetBehaviour(i, ds_Personality_personality);
		script_execute(_scr_behaviour);
	}
}