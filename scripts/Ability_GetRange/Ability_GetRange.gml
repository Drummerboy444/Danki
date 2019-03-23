/// @function Ability_GetRange(Ability_ability) Gets the range of an ability.
/// @param {Ability} Ability_ability The ability (of type Ability)
/// @returns {num} The range.
var _Ability_ability = argument[0];

if(!Ability_INSTANCE_OF(_Ability_ability)){
	ErrorHandler_FatalError("Tried to get range of non Ability structure.");
}

return _Ability_ability[3];
