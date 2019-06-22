enum Enum_Effects {
	SLOW,
	STUN,
	DASH,
	DOT,
	length
}

enum Enum_EventHooks {
	ON_BEGIN_STEP,
	ON_MOVE,
	ON_CAST,
	ON_RECEIVE_DAMAGE,
	ON_DEATH,
	length
}


// Map from effect enum to a ds_EffectHookScripts which stores the script for the effect for each trigger.
map_effectToEventHookScripts = ds_map_create();

map_effectToEventHookScripts[? Enum_Effects.SLOW] = ds_EffectHookScripts_New();
ds_EffectHookScripts_SetScript(
	map_effectToEventHookScripts[? Enum_Effects.SLOW],
	Enum_EventHooks.ON_BEGIN_STEP,
	Slow_BucketHandler);

map_effectToEventHookScripts[? Enum_Effects.STUN] = ds_EffectHookScripts_New();
ds_EffectHookScripts_SetScript(
	map_effectToEventHookScripts[? Enum_Effects.STUN],
	Enum_EventHooks.ON_BEGIN_STEP,
	Stun_BucketHandler);

map_effectToEventHookScripts[? Enum_Effects.DASH] = ds_EffectHookScripts_New();
ds_EffectHookScripts_SetScript(
	map_effectToEventHookScripts[? Enum_Effects.DASH],
	Enum_EventHooks.ON_BEGIN_STEP,
	Dash_BucketHandler);

map_effectToEventHookScripts[? Enum_Effects.DOT] = ds_EffectHookScripts_New();
ds_EffectHookScripts_SetScript(
	map_effectToEventHookScripts[? Enum_Effects.DOT],
	Enum_EventHooks.ON_BEGIN_STEP,
	DOT_BucketHandler);