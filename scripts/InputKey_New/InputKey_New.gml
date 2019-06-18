/// @function InputKey_New(num_keycode, enum_inputDevice) Creates a new InputKey.
/// @param {num} num_keycode The keycode.
/// @param {enum} enum_inputDevice The input device.
/// @returns {ds_DamageData}
var _num_keycode = argument[0];
var _enum_inputDevice = argument[1];

return [_num_keycode, _enum_inputDevice];