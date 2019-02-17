enum Enum_Abilities {
	SLASH,
	SHIELD_BASH,
	CHANNEL_TEST
}

enum Enum_AbilityTypes {
	ONE_SHOT,
	CHANNEL
}

map_ability_to_type = ds_map_create();
map_ability_to_type[? Enum_Abilities.SLASH] = Enum_AbilityTypes.ONE_SHOT;
map_ability_to_type[? Enum_Abilities.SHIELD_BASH] = Enum_AbilityTypes.ONE_SHOT;
map_ability_to_type[? Enum_Abilities.CHANNEL_TEST] = Enum_AbilityTypes.CHANNEL;

// The Scripts array has the following structure:
// For ONE_SHOT abilities:
//	[cast_script];
// For CHANNEL abilities:
//	[start_channel_ script,
//	 channel_script,
//	 cancel_channel_script,
//	 finish_channel_script ];
map_ability_to_scripts = ds_map_create();
map_ability_to_scripts[? Enum_Abilities.SLASH] = [Slash_Cast];
map_ability_to_scripts[? Enum_Abilities.SHIELD_BASH] = [ShieldBash_Cast];
map_ability_to_scripts[? Enum_Abilities.CHANNEL_TEST] = [
	startChannelTest,
	channelTest,
	cancelChannelTest,
	finishChannelTest
];