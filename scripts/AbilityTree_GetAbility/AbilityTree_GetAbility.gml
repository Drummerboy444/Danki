/// @function AbilityTree_GetAbility(id_abilityTree, enum_direction) Gets the ability of the child of the current node in the given direction.
/// @param {id} id_abilityTree The id of the ability tree to get the ability from.
/// @param {enum} enum_direction The direction to get the ability from.
/// @returns {enum} The ability of the child, noone if there is no child.
var _id_abilityTree = argument[0];
var _enum_direction = argument[1];


var _enum_ability = noone;
with (_id_abilityTree) {
	switch (_enum_direction) {
		case Enum_Direction.LEFT:
			if (id_currentAbilityTreeNode.id_leftChild != noone) {
				_enum_ability = id_currentAbilityTreeNode.id_leftChild.enum_ability;
			}
			break;
		case Enum_Direction.RIGHT:
			if (id_currentAbilityTreeNode.id_rightChild != noone) {
				_enum_ability = id_currentAbilityTreeNode.id_rightChild.enum_ability;
			}
			break;
		default:
			ErrorHandler_FatalError("Attempted to get an ability from an ability tree with an invalid direction")
	}
}
return _enum_ability;
