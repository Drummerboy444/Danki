enum Enum_Abilities {
	SLASH,
	SHIELDBASH
}

map_ability_to_script = ds_map_create();
map_ability_to_script[? Enum_Abilities.SLASH] = Slash_Cast;
map_ability_to_script[? Enum_Abilities.SHIELDBASH] = ShieldBash_Cast;