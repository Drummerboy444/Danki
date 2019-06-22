/// @function AbilityTree_Walk(id_abilityTree, enum_direction) Walks down the tree in the given direction, if there is a node
///		in that direction.
/// @param {id} id_abilityTree The id of the ability tree to walk down.
/// @param {enum} enum_direction The direction to walk in.
var _id_abilityTree = argument[0];
var _enum_direction = argument[1];


with (_id_abilityTree) {
	switch (_enum_direction) {
		case Enum_Direction.LEFT:
			var _id_leftChild = id_currentAbilityTreeNode.id_leftChild;
			if (_id_leftChild != noone) {
				id_currentAbilityTreeNode = _id_leftChild;
			}
			break;
		case Enum_Direction.RIGHT:
			var _id_rightChild = id_currentAbilityTreeNode.id_rightChild;
			if (_id_rightChild != noone) {
				id_currentAbilityTreeNode = _id_rightChild;
			}
			break;
		default:
			ErrorHandler_FatalError("Attempted to walk down the ability tree with an invalid direction")
	}
}
