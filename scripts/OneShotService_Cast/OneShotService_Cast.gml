#region Doc
/// @function OneShotService_Cast(id_oneShotService, enum_ability, num_targetX, num_targetY)
///		
/// @param   {id}      id_oneShotService The id of the one shot service to use.
/// @param   {enum}    enum_ability      The ability to cast.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
/// @returns {boolean} True if the ability was successfully  cast.
#endregion
var _id_oneShotService = argument[0];
var _enum_ability = argument[1];
var _num_targetX = argument[2];
var _num_targetY = argument[3];


var _enum_abilityType = AbilityManager_GetAbilityType(_enum_ability);
if (_enum_abilityType != Enum_AbilityTypes.ONE_SHOT) {
	ErrorHandler_Error("Cannot cast an ability whose type is not ONE_SHOT");
	return false;
}

var _cast_script = AbilityManager_GetCastScript(_enum_ability);
// TODO: Decide which variables should be handed to this script
script_execute(_cast_script);
return true;
