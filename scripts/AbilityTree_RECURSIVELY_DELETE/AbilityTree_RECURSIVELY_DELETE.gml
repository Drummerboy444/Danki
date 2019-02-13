#region Doc
/// @function AbilityTree_RECURSIVELY_DELETE(id_node) Deletes the given node and recursively deletes
///		all of its descendants.
/// @param {id} id_node The current node.
#endregion
var _id_node = argument[0];


if (_id_node.id_leftChild != noone) {
	AbilityTree_RECURSIVELY_DELETE(_id_node.id_leftChild);
}
if (_id_node.id_rightChild != noone) {
	AbilityTree_RECURSIVELY_DELETE(_id_node.id_rightChild);
}
instance_destroy(_id_node);
