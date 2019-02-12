#region Doc
/// @function AbilityTree_instantiate(map_abilityTree) Turns a map into a tree of ability tree
///		node objects by recursively walking down the given map.
/// @param {map} map_abilityTree The map containing the ability tree to set up. This map should be
///		of the form:
/// 		{
///				leftChild: {
///					ability: Ability.SLASH,
///					leftChild: {
///						ability: Ability.SLASH,
///						leftChild: {...},
///						rightChild: {...}
///					}
///					rightChild: {
///						ability: Ability.FINISHER,
///						leftChild: {...},
///						rightChild: {...}
///					}
///				},
///				rightChild: {...}
///			}
/// @returns {id} The id of the newly create ability tree.
#endregion
var _map_abilityTree = argument[0];


var _id_abilityTree = Utility_InstantiateAtOrigin(oAbilityTree);

var _map_leftChild = _map_abilityTree[? "leftChild"];
var _map_rightChild = _map_abilityTree[? "rightChild"];

with (_id_abilityTree) {
	id_abilityTreeRoot = Utility_InstantiateAtOrigin(oAbilityTreeNode);
	id_abilityTreeRoot.id_leftChild = AbilityTree_RECURSIVELY_INSTANTIATE(_map_leftChild, id_abilityTreeRoot);
	id_abilityTreeRoot.id_rightChild = AbilityTree_RECURSIVELY_INSTANTIATE(_map_rightChild, id_abilityTreeRoot);
	id_currentAbilityTreeNode = id_abilityTreeRoot;
}

return _id_abilityTree;
