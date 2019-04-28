event_inherited();

var _ds_Stats_baseStats = ds_Stats_New();
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.HEALTH, 200);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.SPEED, 2);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.STRENGTH, 1);
Enemy_Setup(true, true, _ds_Stats_baseStats, TargetDummy_PLAN, Mortal_BASIC_DEATH_SCRIPT, 200);

id_oneShotService.obj_targetType = oPlayer;
id_channelService.obj_targetType = oPlayer;

ds_Personality_SetBehaviour(Enum_Actions.FIND_TARGET, ds_Personality_personality, TargetDummy_FIND_TARGET);
ds_Personality_SetBehaviour(Enum_Actions.ADVANCE, ds_Personality_personality, TargetDummy_ADVANCE);
ds_Personality_SetBehaviour(Enum_Actions.ATTACK, ds_Personality_personality, TargetDummy_ATTACK);
