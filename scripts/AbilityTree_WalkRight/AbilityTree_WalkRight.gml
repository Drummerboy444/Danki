#region Doc
/// @function AbilityTree_WalkRight(id_abilityTree) Moves down the tree to the right ability if there is one.
/// @param {id} id_abilityTree The id of the ability tree to check with.
#endregion
var _id_abilityTree = argument[0];


with (_id_abilityTree) {
	var _id_rightChild = id_currentAbilityTreeNode.id_rightChild
	if (_id_rightChild != noone) {
		id_currentAbilityTreeNode = _id_rightChild;
	}
}
