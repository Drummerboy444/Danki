/// @function AbilityTree_CanWalk(id_abilityTree, enum_direction) Returns true if the node has a child in the given direction.
/// @param {id} id_abilityTree The id of the ability tree to check.
/// @param {enum} enum_direction The direction to check in.
var _id_abilityTree = argument[0];
var _enum_direction = argument[1];


switch (_enum_direction) {
	case Enum_Direction.LEFT:
		return _id_abilityTree.id_currentAbilityTreeNode.id_leftChild != noone;
	case Enum_Direction.RIGHT:
		return _id_abilityTree.id_currentAbilityTreeNode.id_rightChild != noone;
	default:
		ErrorHandler_FatalError("Attempted to check if the ability tree could be walked down with an invalid direction")
}
