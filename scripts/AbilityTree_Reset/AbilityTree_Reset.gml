#region Doc
/// @function AbilityTree_Reset(id_abilityTree) Returns the current ability tree node to the root node.
/// @param {id} id_abilityTree The id of the ability tree to check with.
#endregion
var _id_abilityTree = argument[0];


with (_id_abilityTree) {
	id_currentAbilityTreeNode = id_abilityTreeRoot;
}
