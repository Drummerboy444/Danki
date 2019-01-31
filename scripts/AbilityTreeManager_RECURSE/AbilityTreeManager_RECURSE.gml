#region Doc
/// @function AbilityTreeManager_RECURSE(map_abilityNode, id_parent) Takes a map of an ability in the ability
///		tree and recursively calls itself to build the entire subtree.
/// @param {map} map_abilityNode The map of the ability tree node to be build.
/// @param {id} id_parent The id of the parent node.
/// @returns {id} The id of newly created AbilityTreeNode.
#endregion
var _map_abilityNode = argument[0];
var _id_parent = argument[1];


var _enum_ability = _map_abilityNode[? "ability"];
var _map_leftChild = _map_abilityNode[? "leftChild"];
var _map_rightChild = _map_abilityNode[? "rightChild"];

var _id_currentNode = Utility_InstantiateAtOrigin(oAbilityTreeNode);
var _id_leftChild = noone;
var _id_rightChild = noone;

if (_map_leftChild != noone) {
	_id_leftChild = AbilityTreeManager_RECURSE(_map_leftChild, _id_currentNode);
}
if (_map_rightChild != noone) {
	_id_rightChild = AbilityTreeManager_RECURSE(_map_rightChild, _id_currentNode);
}

with (_id_currentNode) {
	id_parent = _id_parent;
	enum_ability = _enum_ability;
	id_leftChild = _id_leftChild;
	id_rightChild = _id_rightChild;
}

return _id_currentNode;
