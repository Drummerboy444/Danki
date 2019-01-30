#region Doc
/// @function AbilityTreeManager_INITIALISE(map_abilityTree) Turns a map into a tree of ability tree
///		node objects by recursively walking down the given map.
/// @param {map} map_abilityTree The map containing the ability tree to set up. This map should be
///		of the form:
/// 			{
///					leftNode: {
///						ability: Ability.SLASH
///						leftNode: {
///							ability: Ability.SLASH
///							leftNode: {...}
///							rightNode: {...}
///						},
///						rightNode: {
///							ability: Ability.FINISHER,
///							leftNode: Noone,
///							rightNode: Noone,
///						}
///					},
///					rightNode: {...}
///				}
#endregion
var _map_abilityTree = argument[0];


var _map_leftNode = _map_abilityTree[? "leftNode"];
var _map_rightNode = _map_abilityTree[? "rightNode"];


id_abilityTreeRoot = instance_create_layer(0, 0, "Instances", oAbilityTreeRoot)
var _id_leftNode = AbilityTreeManager_RECURSE(_map_leftNode, id_abilityTreeRoot);
var _id_rightNode = AbilityTreeManager_RECURSE(_map_rightNode, id_abilityTreeRoot);

with (id_abilityTreeRoot) {
	id_leftNode = _id_leftNode;
	id_rightNode = _id_rightNode;
}
