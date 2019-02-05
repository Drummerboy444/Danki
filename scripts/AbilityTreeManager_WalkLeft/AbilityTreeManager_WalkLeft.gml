#region Doc
/// @function AbilityTreeManager_WalkLeft() Moves down the tree to the left ability if there is one.
#endregion


with (oAbilityTreeManager) {
	var _id_leftChild = id_currentAbilityTreeNode.id_leftChild;
	if (_id_leftChild != noone) {
		id_currentAbilityTreeNode = _id_leftChild;
	}
}
