enum Enum_Abilities {
	SLASH,
	SHIELD_BASH,
	CHANNEL_TEST
}

enum Enum_AbilityTypes {
	ONE_SHOT,
	CHANNEL
}

mat_abilityToType = ds_map_create();
mat_abilityToType[? Enum_Abilities.SLASH] = Enum_AbilityTypes.ONE_SHOT;
mat_abilityToType[? Enum_Abilities.SHIELD_BASH] = Enum_AbilityTypes.ONE_SHOT;
mat_abilityToType[? Enum_Abilities.CHANNEL_TEST] = Enum_AbilityTypes.CHANNEL;

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
map_abilityToScripts[? Enum_Abilities.CHANNEL_TEST] = [
	startChannelTest,
	channelTest,
	cancelChannelTest,
	finishChannelTest
];

map_channelToLength = ds_map_create();
map_channelToLength[? Enum_Abilities.CHANNEL_TEST] = 120;
