#region Doc
/// @function AbilityTree_GetLeftAbility(id_abilityTree) Gets the ability of the left child of the current node.
/// @param {id} id_abilityTree The id of the ability tree to check with.
/// @returns {enum} The ability of the left child, noone if there is no left child.
#endregion
var _id_abilityTree = argument[0];


var _enum_ability = noone;
with (_id_abilityTree) {
	if (id_currentAbilityTreeNode.id_leftChild != noone) {
		_enum_ability = id_currentAbilityTreeNode.id_leftChild.enum_ability;
	}
}
return _enum_ability;
