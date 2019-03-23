/// @function Ability_GetObject(Ability_ability) Gets the Object for an ability.
/// @param {Ability} Ability_ability The ability (of type Ability)
/// @returns {obj} The object.
var _Ability_ability = argument[0];

if(!Ability_INSTANCE_OF(_Ability_ability)){
	ErrorHandler_FatalError("Tried to get object from non Ability structure.");
}

return _Ability_ability[1];
