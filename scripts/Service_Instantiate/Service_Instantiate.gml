#region Doc
/// @function Service_Instantiate(id_owner, obj_service) Creates a service and returns its id.
/// @param {id} id_owner The id of the object to be set as the owner of the service.
/// @param {obj} obj_service The object which represents the type of service to be created.
/// @returns {id} The id of newly created one shot service.
#endregion
var _id_owner = argument[0];
var _obj_service = argument[1];


var _id_service = Utility_InstantiateAtOrigin(_obj_service);
_id_service.id_owner = _id_owner;

return _id_service;