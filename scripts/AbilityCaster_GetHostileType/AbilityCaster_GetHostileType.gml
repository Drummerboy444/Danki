#region Doc
/// @function AbilityCaster_GetHostileType(id_abilityCaster) Get the type that the input ability caster wants to hit.
/// @param   {id}      id_abilityCaster		 The id of the abilityCaster.
/// @returns {obj}	   obj_hostileType		 The object index which represents a hostile.
#endregion

var id_abilityCaster = argument[0];

if(!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, id_abilityCaster)){
	ErrorHandler_Error("Tried to find hostile type for non ability caster.");
	return noone;
}

var _bool_isEnemy = Utility_ObjectIsAncestorOfInstance(oEnemy, id_abilityCaster);
return _bool_isEnemy ? oPlayer : oEnemy;