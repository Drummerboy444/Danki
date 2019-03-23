enum Enum_AbilityTypes {
	ONE_SHOT,
	CHANNEL
}

Ability_slash = OneShot_New("Slash", oSlash, 20, true, OneShotScripts_New(Slash_Cast));
Ability_shieldBash = OneShot_New("Shield bash", oShieldBash, 15, true, OneShotScripts_New(ShieldBash_Cast));
Ability_yellowCircle = OneShot_New("Yellow circle", oYellowCircle, 100, true, OneShotScripts_New(YellowCircle_Cast));

//map_abilityToType = ds_map_create();
//map_abilityToType[? Enum_Abilities.SLASH] = Enum_AbilityTypes.ONE_SHOT;
//map_abilityToType[? Enum_Abilities.SHIELD_BASH] = Enum_AbilityTypes.ONE_SHOT;
//map_abilityToType[? Enum_Abilities.YELLOW_CIRCLE] = Enum_AbilityTypes.ONE_SHOT;

//map_abilityToScripts = ds_map_create();
//map_abilityToScripts[? Enum_Abilities.SLASH] = OneShotScripts_New(Slash_Cast);
//map_abilityToScripts[? Enum_Abilities.SHIELD_BASH] = OneShotScripts_New(ShieldBash_Cast);
//map_abilityToScripts[? Enum_Abilities.YELLOW_CIRCLE] = OneShotScripts_New(YellowCircle_Cast);

//map_channelToLength = ds_map_create();
