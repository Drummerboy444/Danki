#region Doc
/// @function Utility_InstanceOfObject(id_instance, obj_object) Checks if the given instance id is an instance
///		of the given object.
/// @param {id} id_instance The instance to check.
/// @param {obj} obj_object The object to check against.
/// @returns {boolean} True if the instance is an instance of the object.
#endregion
var _id_instance = argument[0];
var _obj_object = argument[1];


return _id_instance.object_index == _obj_object;
