if(point_distance(x,y, id_target.x, id_target.y) < 100){
	OneShotService_Cast(id_oneShotService, Enum_Abilities.SHIELD_BASH, id_target.x, id_target.y);
} else if (ds_Agenda_Includes(ds_Agenda_agenda, Enum_Actions.ADVANCE)
	|| ds_Agenda_Includes(ds_Agenda_agenda, Enum_Actions.EVADE)) {
	ChannelService_Channel(id_channelService, Enum_Abilities.BLUE_BEAM, id_target.x, id_target.y);
}