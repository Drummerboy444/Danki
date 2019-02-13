#region Doc
/// @function AbilityTree_GetRightAbility(id_abilityTree) Gets the ability of the right child of the current node.
/// @param {id} id_abilityTree The id of the ability tree to check with.
/// @returns {enum} The ability of the right child, noone if there is no right child.
#endregion
var _id_abilityTree = argument[0];


var _enum_ability = noone;
with (_id_abilityTree) {
	if (id_currentAbilityTreeNode.id_rightChild != noone) {
		_enum_ability = id_currentAbilityTreeNode.id_rightChild.enum_ability;
	}
}
return _enum_ability;
