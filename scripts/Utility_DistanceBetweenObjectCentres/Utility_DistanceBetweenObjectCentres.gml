/// @function Utility_DistanceBetweenObjectCentres(id_instance1, id_instance2) Returns the distance between the
/// centers of instance1 and instance2 as a number.
/// @param {id} id_instance1  The first instance.
/// @param {id} id_instance2  The second instance.
/// @returns {num} The distance between both instance centers.
var _id_instance1 = argument[0];
var _id_instance2 = argument[1];


var _num_distance = point_distance(
	_id_instance1.x,
	_id_instance1.y,
	_id_instance2.x,
	_id_instance2.y
);

return _num_distance;