#region Doc
/// @function OneShotService_Instantiate(id_owner) Creates a new one shot service and returns its id.
/// @param {id} id_owner The id of the object to be set as the owner of the one shot service.
/// @returns {id} The id of newly created one shot service.
#endregion
var _id_owner = argument[0];


var _id_service = Utility_InstantiateAtOrigin(oOneShotService);
_id_service.id_owner = _id_owner;

return _id_service;
