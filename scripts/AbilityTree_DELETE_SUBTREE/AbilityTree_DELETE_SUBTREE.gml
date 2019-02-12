#region Doc
/// @function AbilityTree_DELETE_SUBTREE(id_root) Deletes an entire subtree of the ability tree given
///		a root node to delete from. This root node will also be deleted, if it has a parent node then that
///		nodes child will be set to noone.
///		NOTE: This script does not update the ability trees current node, or the root node, these
///			  values must be handled separately, if at all.
/// @param {id} id_root The node to delete downwards from.
#endregion
var _id_root = argument[0];


// This is to remove the id of the node being deleted from its parent
var _id_parent = _id_root.id_parent;
if (_id_parent != noone) {
	if (_id_root == _id_parent.id_leftChild) {
		_id_parent.id_leftChild = noone;
	}
	if (_id_root == _id_parent.id_rightChild) {
		_id_parent.id_rightChild = noone;
	}
}

AbilityTree_RECURSIVELY_DELETE(_id_root);
