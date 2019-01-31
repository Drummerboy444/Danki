#region Doc
/// @function AbilityTreeManager_GetRightAbility() Gets the ability of the right child of the current node.
/// @returns {enum} The ability of the right child, noone if there is no right child.
#endregion


var _enum_ability = noone;
with (oAbilityTreeManager) {
	if (id_currentAbilityTreeNode.id_rightChild != noone) {
		_enum_ability = id_currentAbilityTreeNode.id_rightChild.enum_ability;
	}
}
return _enum_ability;
