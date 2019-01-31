#region Doc
/// @function AbilityTreeManager_WalkRight() Moves down the tree to the right ability if there is one.
#endregion


with (oAbilityTreeManager) {
	var _id_rightChild = id_currentAbilityTreeNode.id_rightChild
	if (_id_rightChild != noone) {
		id_currentAbilityTreeNode = _id_rightChild;
	}
}
