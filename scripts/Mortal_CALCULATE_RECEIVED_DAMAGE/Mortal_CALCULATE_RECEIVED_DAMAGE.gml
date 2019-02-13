#region Doc
/// @function Mortal_CALCULATE_RECEIVED_DAMAGE(arr_damageArray)
/// @param {array} arr_damageArray The damage array from a given list location.
/// @return {number} The amount of damage to recieve.
#endregion
var _arr_damageArray = argument[0];

var _enum_damageType = _arr_damageArray[0];
var _num_damageAmount = _arr_damageArray[1];

return _num_damageAmount;
// further calculations involving the Mortals effects with respect to damage type and amount
// return the final calculated damage
