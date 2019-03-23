/// @function Ability_GetName(Ability_ability) Gets the name of an ability.
/// @param {Ability} Ability_ability The ability (of type Ability)
/// @returns {string} The name.
var _Ability_ability = argument[0];

if(!Ability_INSTANCE_OF(_Ability_ability)){
	ErrorHandler_FatalError("Tried to get name from non Ability structure.");
}

return _Ability_ability[0];
