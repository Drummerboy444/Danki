#region Doc
/// @function Mortal_APPLY_DAMAGE() Applies damage to the mortal
/// and clears the current damage list.
#endregion

var _num_damageListSize = ds_list_size(id.list_damageList);
var _num_applyDamage = 0;

for (var i = 0; i < _num_damageListSize; i++){
	_num_applyDamage += Mortal_CALCULATE_RECEIVED_DAMAGE(id.list_damageList[i]);
}

id.num_currentHealth -= _num_applyDamage;

ds_list_clear(id.list_damageList);
