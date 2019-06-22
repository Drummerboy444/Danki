/// @function AbilityTree_CanWalk(id_abilityTree, ?enum_direction) Returns true if the ability tree can be walked
///		down in any direction. If the optional direction parameter is given then only returns true if the tree
///		can be walked down in that direction.
/// @param {id} id_abilityTree The id of the ability tree to check.
/// @param {enum} ?enum_direction The optional direction to check in. If not given, checks for any direction.
var _id_abilityTree = argument[0];
var _enum_direction = argument_count > 1 ? argument[1] : undefined;

if (_enum_direction) {
	switch (_enum_direction) {
		case Enum_Direction.LEFT:
			return _id_abilityTree.id_currentAbilityTreeNode.id_leftChild != noone;
		case Enum_Direction.RIGHT:
			return _id_abilityTree.id_currentAbilityTreeNode.id_rightChild != noone;
		default:
			ErrorHandler_FatalError("Attempted to check if the ability tree could be walked down with an invalid direction")
	}
} else {
	return
		_id_abilityTree.id_currentAbilityTreeNode.id_leftChild != noone ||
		_id_abilityTree.id_currentAbilityTreeNode.id_rightChild != noone;
}
