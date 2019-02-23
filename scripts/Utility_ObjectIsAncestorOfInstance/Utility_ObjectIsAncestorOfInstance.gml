#region Doc
/// @function Utility_ObjectIsAncestorOfInstance(obj_object, id_instance) Asserts an object is an ancestor of an
/// instance. Throws an error if the target isn't an oMortal.
/// @param {obj} obj_object The object that may be an ancestor
/// @param {id} id_instance The instance whose object may be a decendant
/// @returns {boolean} Asserts object ancestor of instance
#endregion
var _obj_object = argument[0];
var _id_instance = argument[1];

var _obj_instanceObject = _id_instance.object_index;

return object_is_ancestor(_obj_instanceObject, _obj_object);


