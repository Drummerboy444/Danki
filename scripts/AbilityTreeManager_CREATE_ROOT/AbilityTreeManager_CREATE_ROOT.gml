#region Doc
/// @function AbilityTreeManager_CREATE_ROOT(id_leftNode, id_rightNode) Instantiates an
///		AbilityTreeRoot with the given values.
/// @param {id} id_leftNode The id of the roots left node
/// @param {id} id_rightNode The id of the roots right node
/// @returns {id} The id of newly created AbilityTreeRoot.
#endregion
var _id_leftNode = argument[0];
var _id_rightNode = argument[1];


var _id_root = instance_create_layer(0, 0, "Instances", oAbilityTreeRoot);
with (_id_root) {
	id_leftNode = _id_leftNode;
	id_rightNode = _id_rightNode;
}
return _id_root;
