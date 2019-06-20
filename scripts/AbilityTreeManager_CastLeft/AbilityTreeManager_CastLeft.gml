/// @function AbilityTreeManager_CastLeft(num_targetX, num_targetY)
/// @param {number} num_targetX The x target of the ability.
/// @param {number} num_targetY The y target of the ability.
/// @returns {boolean} Whether the attempt to cast was successful.
var _num_targetX = argument[0];
var _num_targetY = argument[1];


oAbilityTreeManager.bool_mouseDownThisFrame = true;

//var _id_abilityTree = oAbilityTreeManager.id_abilityTree;
//if (!AbilityTree_CanGoLeft(_id_abilityTree) && !oAbilityTreeManager.bool_mouseDownLastFrame) {
//	show_debug_message("resetting")
//	AbilityTree_Reset(_id_abilityTree);
//	return false;
//}

var _enum_ability = AbilityTree_GetLeftAbility(oAbilityTreeManager.id_abilityTree);
var _ds_Ability_toCast = AbilityManager_GetAbilityFromEnum(_enum_ability);
var _enum_abilityType = ds_Ability_GetType(_ds_Ability_toCast);

//var _bool_doneCasting;
switch (_enum_abilityType) {
	case Enum_AbilityTypes.ONE_SHOT:
		if (oAbilityTreeManager.bool_mouseDownLastFrame) {
			return false;
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

//if (_bool_doneCasting) {
//	show_debug_message("walking left")
//	AbilityTree_WalkLeft(_id_abilityTree);
//}
