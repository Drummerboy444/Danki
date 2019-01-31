#region Doc
/// @function AbilityTreeManager_GetLeftAbility() Gets the ability of the left child of the current node.
/// @returns {enum} The ability of the left child, noone if there is no left child.
#endregion


var _enum_ability = noone;
with (oAbilityTreeManager) {
	if (id_currentAbilityTreeNode.id_leftChild != noone) {
		_enum_ability = id_currentAbilityTreeNode.id_leftChild.enum_ability;
	}
}
return _enum_ability;
