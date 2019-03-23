/// @function Ability_CheckOffensive(Ability_ability) Asserts ability is offensive rather than defensive.
/// @param {Ability} Ability_ability The ability (of type Ability)
/// @returns {bool} True if offensive, false if defensive.
var _Ability_ability = argument[0];

if(!Ability_INSTANCE_OF(_Ability_ability)){
	ErrorHandler_FatalError("Tried to check offensiveness of non Ability structure.");
}

return _Ability_ability[4];
