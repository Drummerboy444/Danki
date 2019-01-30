#region Doc
/// @function AbilityTreeManager_RECURSE(map_abilityNode, id_parent) Takes a map of an ability in the ability
///		tree and recursively calls itself to build the entire subtree.
/// @param {map} map_abilityNode The map of the ability tree node to be build.
/// @param {id} id_parent The id of the parent node.
/// @returns {id} The id of newly created AbilityTreeNode.
#endregion
var _map_abilityNode = argument[0];
var _id_parent = argument[1];


var _scr_ability = _map_abilityNode[? "ability"];
var _map_leftNode = _map_abilityNode[? "leftNode"];
var _map_rightNode = _map_abilityNode[? "rightNode"];

var _id_leftNode = noone;
var _id_rightNode = noone;

var _id_node = instance_create_layer(0, 0, "Instances", oAbilityTreeNode);

if (_map_leftNode != noone) {
	_id_leftNode = AbilityTreeManager_RECURSE(_map_leftNode, _id_node);
}
if (_map_rightNode != noone) {
	_id_rightNode = AbilityTreeManager_RECURSE(_map_rightNode, _id_node);
}

with (_id_node) {
	id_parent = _id_parent;
	scr_ability = _scr_ability;
	id_leftNode = _id_leftNode;
	id_rightNode = _id_rightNode;
}

return _id_node;

//if (_map_leftNode == noone) {
//	_id_leftNode = AbilityTreeManager_CREATE_NODE(_scr_ability, _id_parent, noone, noone);
//}
//if (_map_rightNode == noone) {
//	_id_rightNode = AbilityTreeManager_CREATE_NODE(_scr_ability, _id_parent, noone, noone);
//}

//return AbilityTreeManager_CREATE_NODE(_scr_ability, _id_leftNode, _id_parent, _id_rightNode);
