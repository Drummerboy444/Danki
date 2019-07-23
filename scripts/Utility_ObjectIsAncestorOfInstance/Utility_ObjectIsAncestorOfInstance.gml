#region Doc
/// @function Utility_ObjectIsAncestorOfInstance(obj_object, id_instance, ?bool_includeSelf) Asserts an object is an ancestor of an
/// instance.
/// @param {obj} obj_object The object that may be an ancestor
/// @param {id} id_instance The instance whose object may be a decendant
/// @param {bool} ?bool_includeSelf Input true when the ancestor check should also include the id_instance in
///									the check.
/// @returns {boolean} Asserts object ancestor of instance
#endregion
var _obj_object = argument[0];
var _id_instance = argument[1];
var _bool_includeSelf = argument_count > 2 ? argument[2] : noone;

var _obj_instanceObject = _id_instance.object_index;

if(_bool_includeSelf) {
	return object_is_ancestor(_obj_instanceObject, _obj_object)
	or	
	_obj_object == _obj_instanceObject;
}

return object_is_ancestor(_obj_instanceObject, _obj_object);
