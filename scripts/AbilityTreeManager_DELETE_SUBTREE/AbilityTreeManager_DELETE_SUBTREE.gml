#region Doc
/// @function AbilityTreeManager_DELETE_SUBTREE(id_root) Deletes an entire subtree of the ability tree given
///		a root node to delete from. This root node will also be deleted, if it has a parent node then that
///		nodes child will be set to noone.
/// @param {id} id_root The node to delete downwards from.
#endregion
var _id_root = argument[0];


var _id_parent = _id_root.id_parent;
if (_id_parent != noone) {
	if (_id_root == _id_parent.id_leftChild) {
		_id_parent.id_leftChild = noone;
	}
	if (_id_root == _id_parent.id_rightChild) {
		_id_parent.id_rightChild = noone;
	}
}

if (_id_root.id_leftChild != noone) {
	AbilityTreeManager_DELETE_SUBTREE(_id_root.id_leftChild);
}
if (_id_root.id_rightChild != noone) {
	AbilityTreeManager_DELETE_SUBTREE(_id_root.id_rightChild);
}
instance_destroy(_id_root);
