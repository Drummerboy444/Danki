enum Enum_Abilities {
	SLASH,
	SHIELD_BASH,
	YELLOW_CIRCLE,
	BLUE_BEAM,
	length
}

enum Enum_AbilityTypes {
	ONE_SHOT,
	CHANNEL
}

// One Shots:
ds_Ability_slash = ds_OneShot_New("Slash", oSlash, 20, true, Slash_Cast);
ds_Ability_shieldBash = ds_OneShot_New("Shield bash", oShieldBash, 15, true, ShieldBash_Cast);
ds_Ability_yellowCircle = ds_OneShot_New("Yellow circle", oYellowCircle, 100, true, YellowCircle_Cast);

// Channels:
ds_Ability_blueBeam = ds_Channel_New("Blue beam", oBlueBeam, 100, true, 120,
	BlueBeam_StartChannel, BlueBeam_ContinueChannel, BlueBeam_CancelChannel, BlueBeam_FinishChannel);

map_EnumToAbility = ds_map_create();
map_EnumToAbility[? Enum_Abilities.SLASH] = ds_Ability_slash;
map_EnumToAbility[? Enum_Abilities.SHIELD_BASH] = ds_Ability_shieldBash;
map_EnumToAbility[? Enum_Abilities.YELLOW_CIRCLE] = ds_Ability_yellowCircle;
map_EnumToAbility[? Enum_Abilities.BLUE_BEAM] = ds_Ability_blueBeam;