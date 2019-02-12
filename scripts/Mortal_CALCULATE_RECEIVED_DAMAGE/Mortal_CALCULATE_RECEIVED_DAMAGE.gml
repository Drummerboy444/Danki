#region Doc
/// @function Mortal_CALCULATE_RECEIVED_DAMAGE(arr_damageArray, id_Mortal)
/// @param {arr_damageArray} arr_damageArray The damage array from a given list location.
/// @param {id_Mortal} id_Mortal ID of the mortal to take damage.
#endregion
var _arr_damageArray = argument[0];
var _id_Mortal = argument[1];

var _ENUM_DamageType = _arr_damageArray[0];
var _num_DamageAmount = _arr_damageArray[1];

// calculations involving the Mortals effects with respect to damage type and amount
// return the final calculated damage
