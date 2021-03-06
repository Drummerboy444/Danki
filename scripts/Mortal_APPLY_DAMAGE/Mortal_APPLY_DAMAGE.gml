#region Doc
/// @function Mortal_APPLY_DAMAGE() Applies damage to the mortal
/// and clears the current damage list.
#endregion

var _num_damageListSize = ds_list_size(list_ds_DamageData_damageList);
var _num_applyDamage = 0;

for (var i = 0; i < _num_damageListSize; i++){
	var _ds_DamageData_damage = list_ds_DamageData_damageList[| i];
	_num_applyDamage += Mortal_CALCULATE_RECEIVED_DAMAGE(_ds_DamageData_damage);
	ds_DamageData_Destroy(_ds_DamageData_damage);
}

num_currentHealth -= _num_applyDamage;

if(num_currentHealth < 0){
	AbilityCaster_applyOnDeathEffects(id);
}

ds_list_clear(list_ds_DamageData_damageList);
