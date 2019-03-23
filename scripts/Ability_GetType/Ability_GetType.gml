/// @function Ability_GetType(Ability_ability) Gets the Type (oneshot or channel) of an ability.
/// @param {Ability} Ability_ability The ability (of type Ability)
/// @returns {enum} The type.
var _Ability_ability = argument[0];

if(!Ability_INSTANCE_OF(_Ability_ability)){
	ErrorHandler_FatalError("Tried to get type from non Ability structure.");
}

return _Ability_ability[2];
