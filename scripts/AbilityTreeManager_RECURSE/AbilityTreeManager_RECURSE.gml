#region Doc
/// @function AbilityTreeManager_RECURSE(map_abilityNode) Takes a map of an ability in the ability tree and
///		recursively calls itself to build the entire subtree.
/// @param {map} map_abilityNode The map of the ability tree node to be build.
/// @returns {id} The id of newly created AbilityTreeNode.
#endregion
var _map_abilityNode = argument[0];


var _scr_ability = _map_abilityNode[? "ability"];
var _map_leftNode = _map_abilityNode[? "leftNode"];
var _map_rightNode = _map_abilityNode[? "rightNode"];

var _id_leftNode = noone;
var _id_rightNode = noone;

if (_map_leftNode != noone) {
	_id_leftNode = AbilityTreeManager_RECURSE(_map_leftNode);
}
if (_map_rightNode != noone) {
	_id_rightNode = AbilityTreeManager_RECURSE(_map_rightNode);
}

if (_map_leftNode == noone) {
	_id_leftNode = AbilityTreeManager_CREATE_NODE(_scr_ability, noone, _id_rightNode);
}
if (_map_rightNode == noone) {
	_id_rightNode = AbilityTreeManager_CREATE_NODE(_scr_ability, _id_leftNode, noone);
}

return AbilityTreeManager_CREATE_NODE(_scr_ability, _id_leftNode, _id_rightNode);
