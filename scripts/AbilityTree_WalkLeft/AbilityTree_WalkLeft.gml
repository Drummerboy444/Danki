#region Doc
/// @function AbilityTree_WalkLeft(id_abilityTree) Moves down the tree to the left ability if there is one.
/// @param {id} id_abilityTree The id of the ability tree to check with.
#endregion
var _id_abilityTree = argument[0];


with (_id_abilityTree) {
	var _id_leftChild = id_currentAbilityTreeNode.id_leftChild;
	if (_id_leftChild != noone) {
		id_currentAbilityTreeNode = _id_leftChild;
	}
}
