#region Doc
/// @function AbilityTree_CanGoLeft(id_abilityTree) Returns true if the current ability has a left child.
/// @param {id} id_abilityTree The id of the ability tree to check with.
/// @returns {boolean} true if the current ability has a left child.
#endregion
var _id_abilityTree = argument[0];


return _id_abilityTree.id_currentAbilityTreeNode.id_leftChild != noone;
