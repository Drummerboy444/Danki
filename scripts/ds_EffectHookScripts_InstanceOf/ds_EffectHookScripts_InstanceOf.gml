/// @function ds_EffectHookScripts_InstanceOf(any_data) Checks if the given variable is an instance of ds_EffectHookScripts.
/// @param {any} any_data The variable to check.
/// @returns {boolean} True if the variable is a ds_EffectHookScripts.
var _any_data = argument[0];


if (!ds_exists(_any_data, ds_type_map)) {
	return false;
}

var _any_currentKey
if(!ds_map_empty(_any_data)){
	_any_currentKey = ds_map_find_first(_any_data);	
}

for(var _num_key = 0; _num_key < ds_map_size(_any_data); _num_key++) {
	if(!is_real(_any_currentKey) or !script_exists(_any_data[? _any_currentKey])){
		return false;
	}
	
	_any_currentKey = ds_map_find_next(_any_data, _any_currentKey);
	if(_any_currentKey == undefined) break;
}

return true;
