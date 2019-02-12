#region Doc
/// @function Mortal_APPLY_DAMAGE(list_damageList, id_Mortal) Applies damage to the mortal
/// and clears the current damage list.
/// @param {list_damageList} list_damageList The damage list.
/// @param {id_Mortal} id_Mortal ID of the mortal to take damage.
#endregion
var _list_damageList = argument[0];
var _id_Mortal = argument[1];

var _num_damageListSize = ds_list_size(_list_damageList);
var _applyDamage = 0;

for (var i = 0; i <= _num_damageListSize - 1; i++){
	_applyDamage += Mortal_CALCULATE_RECEIVED_DAMAGE(_list_damageList[i], _id_Mortal);
}

_id_Mortal.num_currentHealth -= _applyDamage;

ds_list_clear(_id_Mortal.list_damageList);
