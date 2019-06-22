/// @function AbilityTreeManager_CastLeft(num_targetX, num_targetY, enum_direction)
/// @param {number} num_targetX The x target of the ability.
/// @param {number} num_targetY The y target of the ability.
/// @param {enum} enum_direction The ability tree direction to cast.
/// @returns {boolean} Whether the attempt to cast was successful.
var _num_targetX = argument[0];
var _num_targetY = argument[1];
var _enum_direction = argument[2];


switch (_enum_direction) {
	case Enum_Direction.LEFT:
		oAbilityTreeManager.enum_inputStateThisFrame = Enum_InputState.LEFT;
		break;
	case Enum_Direction.RIGHT:
		oAbilityTreeManager.enum_inputStateThisFrame = Enum_InputState.RIGHT;
		break;
}

switch (oAbilityTreeManager.enum_inputStateLastFrame) {
	case Enum_InputState.LEFT:
		if (oAbilityTreeManager.enum_inputStateThisFrame != Enum_InputState.LEFT) {
			return;
		}
		break;
	case Enum_InputState.RIGHT:
		if (oAbilityTreeManager.enum_inputStateThisFrame != Enum_InputState.RIGHT) {
			return;
		}
		break;
}

var _enum_ability = AbilityTree_GetAbility(oAbilityTreeManager.id_abilityTree, Enum_Direction.LEFT);
var _ds_Ability_toCast = AbilityManager_GetAbilityFromEnum(_enum_ability);
var _enum_abilityType = ds_Ability_GetType(_ds_Ability_toCast);

switch (_enum_abilityType) {
	case Enum_AbilityTypes.ONE_SHOT:
		if (oAbilityTreeManager.enum_inputStateLastFrame != Enum_InputState.NONE) {
			return;
		}
		oAbilityTreeManager.bool_inputWasSuccessful = OneShotService_Cast(
			oPlayer.id_oneShotService,
			_enum_ability,
			_num_targetX,
			_num_targetY
		);
		break;

	case Enum_AbilityTypes.CHANNEL:
		oAbilityTreeManager.bool_inputWasSuccessful = ChannelService_Channel(
			oPlayer.id_channelService,
			_enum_ability,
			_num_targetX,
			_num_targetY
		);
		break;

	default:
		ErrorHandler_FatalError("Ability type " + _enum_abilityType + " not handled by the ability tree manager");
}
