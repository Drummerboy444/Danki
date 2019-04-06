#region Doc
/// @function OneShotService_Cast(id_oneShotService, enum_ability, num_targetX, num_targetY, ?bool_overrideGlobalCooldown)
///		
/// @param   {id}      id_oneShotService            The id of the one shot service to use.
/// @param   {enum}    enum_ability                 The ability to cast.
/// @param   {number}  num_targetX                  The x target of the ability.
/// @param   {number}  num_targetY                  The y target of the ability.
/// @param   {boolean} ?bool_overrideGlobalCooldown An optional parameter that, if true, will cast the
///                                                 ability even if the global cooldown is on. Defaults
///                                                 to false.
/// @returns {boolean} True if the ability was successfully  cast.
#endregion
var _id_oneShotService = argument[0];
var _enum_ability = argument[1];
var _num_targetX = argument[2];
var _num_targetY = argument[3];
var _bool_overrideGlobalCooldown = argument_count > 4 ? argument[4]: false;



if (!Utility_InstanceOfObject(_id_oneShotService, oOneShotService)) {
	ErrorHandler_Error("Cannot cast ability as _id_oneShotService was not an instance of oOneShotService");
	return false;
}

with(_id_oneShotService){
	if (AbilityCaster_IsOnGlobalCooldown(id_owner) && !_bool_overrideGlobalCooldown) {
		return false;
	}
	
	var _ds_OneShot_oneShot = AbilityManager_GetAbilityFromEnum(_enum_ability);
	
	if (!ds_OneShot_InstanceOf(_ds_OneShot_oneShot)) {
		ErrorHandler_Error("Cannot cast, input not a valid OneShot");
		return false;
	}

	var _cast_script = ds_OneShot_GetCastScript(_ds_OneShot_oneShot)
	var _id_ability = script_execute(_cast_script, id_owner, _num_targetX, _num_targetY);

	if (!_id_ability) {
		ErrorHandler_Error("Cast script did not return a value");
		return false;
	} else if (!Utility_ObjectIsAncestorOfInstance(oOneShot, _id_ability)) {
		ErrorHandler_Error("Cast script did not return an id of a one shot object");
		return false;
	}

	id_ability = _id_ability;
	id_ability.id_source = id_owner;
	
	if (!_bool_overrideGlobalCooldown) {
		AbilityCaster_StartGlobalCooldown(id_owner);
	}

	AbilityCaster_applyOnCastEffects(id_owner);
	
	return true;
}

return false;
