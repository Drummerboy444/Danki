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

// Channel abilities map to ChannelScripts type, OneShot abilities map to OneShotScripts type
map_abilityToScripts = ds_map_create();
map_abilityToScripts[? Enum_Abilities.SLASH] = OneShotScripts_New(Slash_Cast);
map_abilityToScripts[? Enum_Abilities.SHIELD_BASH] = OneShotScripts_New(ShieldBash_Cast);

map_channelToLength = ds_map_create();
