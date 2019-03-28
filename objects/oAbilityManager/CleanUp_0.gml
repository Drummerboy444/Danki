for(var _enum_ability=0; _enum_ability<Enum_Abilities.length; _enum_ability++){
	ds_Ability_Destroy(map_EnumToAbility[? _enum_ability]);
}

ds_map_destroy(map_EnumToAbility);