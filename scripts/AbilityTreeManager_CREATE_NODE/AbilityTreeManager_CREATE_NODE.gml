#region Doc
/// @function AbilityTreeManager_CREATE_NODE(scr_ability, id_leftNode, id_rightNode) Instantiates an
///		AbilityTreeNode with the given values.
/// @param {script} scr_ability The nodes ability.
/// @param {id} id_leftNode The id of the nodes left node
/// @param {id} id_rightNode The id of the nodes right node
/// @returns {id} The id of newly created AbilityTreeNode.
#endregion
var _scr_ability = argument[0];
var _id_leftNode = argument[1];
var _id_rightNode = argument[2];


var _id_node = instance_create_layer(0, 0, "Instances", oAbilityTreeNode);
with (_id_node) {
	scr_ability = _scr_ability;
	id_leftNode = _id_leftNode;
	id_rightNode = _id_rightNode;
}
return _id_node;
