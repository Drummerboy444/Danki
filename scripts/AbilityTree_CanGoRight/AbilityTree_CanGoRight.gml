#region Doc
/// @function AbilityTree_CanGoRight(id_abilityTree) Returns true if the current ability has a right child.
/// @param {id} id_abilityTree The id of the ability tree to check with.
/// @returns {boolean} true if the current ability has a right child.
#endregion
var _id_abilityTree = argument[0];


return _id_abilityTree.id_currentAbilityTreeNode.id_rightChild != noone;
