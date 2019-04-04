#region Doc
/// @function Utility_InstantiateAtOrigin(obj_toInstantiate) Instantiates the given object at (0, 0).
/// @param {object_index} obj_toCreate The index of the object to instantiate
/// @returns {id} The id of newly created instance.
#endregion
var _obj_toInstantiate = argument[0];


return instance_create_layer(0, 0, LAYERS_INSTANCES, _obj_toInstantiate);
