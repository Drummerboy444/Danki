enum Enum_Abilities {
	SLASH,
	SHIELDBASH
}

enum Enum_Ability_types {
	ONESHOT,
	CHANNEL
}

map_ability_to_type = ds_map_create();
map_ability_to_type[? Enum_Abilities.SLASH] = [Enum_Ability_types.ONESHOT];
map_ability_to_type[? Enum_Abilities.SHIELDBASH] = [Enum_Ability_types.ONESHOT];

// The Scripts array has the following structure:
// For ONESHOT abilities:
//	[cast_script];
// For CHANNEL abilities:
//	[start_channel_ script,
//	 channel_script,
//	 cancel_channel_script,
//	 finish_channel_script ];
map_ability_to_scripts = ds_map_create();
map_ability_to_scripts[? Enum_Abilities.SLASH] = [Slash_Cast];
map_ability_to_scripts[? Enum_Abilities.SHIELDBASH] = [ShieldBash_Cast];