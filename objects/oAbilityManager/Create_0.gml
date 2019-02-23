enum Enum_Abilities {
	SLASH,
	SHIELD_BASH
}

enum Enum_AbilityTypes {
	ONE_SHOT,
	CHANNEL
}

map_abilityToType = ds_map_create();
map_abilityToType[? Enum_Abilities.SLASH] = Enum_AbilityTypes.ONE_SHOT;
map_abilityToType[? Enum_Abilities.SHIELD_BASH] = Enum_AbilityTypes.ONE_SHOT;

// The Scripts array has the following structure:
// For ONE_SHOT abilities:
//	[cast_script];
// For CHANNEL abilities:
//	[start_channel_ script,
//	 channel_script,
//	 cancel_channel_script,
//	 finish_channel_script ];
map_abilityToScripts = ds_map_create();
map_abilityToScripts[? Enum_Abilities.SLASH] = [Slash_Cast];
map_abilityToScripts[? Enum_Abilities.SHIELD_BASH] = [ShieldBash_Cast];

map_channelToLength = ds_map_create();
