#region Doc
/// @function AbilityCaster_AddEffectToBuffer() Add a an effect to the given AbilityCaster's effect buffer
///		via an already made effectData array, constructed through the caster's private script to do so.
/// @param {id} id of the ability caster to add the effect to.
/// @param {arr_effectData} arr_effectData to add to the buffer.
#endregion

var _id_target = argument[0];
var _arr_effectData = argument[1];

//All effectData should have 4 entries.
if (array_length_1d(_arr_effectData) == 4){
	with (_id_target){
	ds_list_add(list_effectsBuffer, _arr_effectData);
	}
} else {
	ErrorHandler_Error("Invalid effectData array was asked to be added to our buffer.");	
}
