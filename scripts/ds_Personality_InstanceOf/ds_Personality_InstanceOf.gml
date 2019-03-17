/// @function ds_Personality_InstanceOf(any_data) Asserts data is a ds_Personality.
/// @param {any} any_data The data to check.
/// @returns {bool} Asserts data is a ds_Personality.
var _any_data = argument[0];

if(!ds_exists(_any_data, ds_type_map)){
	return false;
}

for(var i = 0; i < Enum_Actions.length; i++){
	if(is_undefined(ds_map_find_value(_any_data, i))){
		return false;	
	}
}

return true;