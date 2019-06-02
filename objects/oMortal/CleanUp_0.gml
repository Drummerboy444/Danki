for (var i = 0; i < ds_list_size(list_ds_DamageData_damageList); i++) {
	var _ds_DamageData_damage = list_ds_DamageData_damageList[| i];
	ds_DamageData_Destroy(_ds_DamageData_damage);
}
ds_list_destroy(list_ds_DamageData_damageList);
