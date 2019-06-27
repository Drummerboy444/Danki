///// @function AbilityTreeManager_Cast_(num_targetX, num_targetY, enum_direction)
///// @param {number} num_targetX The x target of the ability.
///// @param {number} num_targetY The y target of the ability.
///// @param {enum} enum_direction The ability tree direction to cast.
///// @returns {boolean} Whether the attempt to cast was successful.
//var _num_targetX = argument[0];
//var _num_targetY = argument[1];
//var _enum_direction = argument[2];


//var _enum_potentialInputState = AbilityTreeManager_INPUT_STATE_FROM_DIRECTION(_enum_direction);

//switch (oAbilityTreeManager.enum_inputStateLastFrame) {
//	case Enum_InputState.LEFT:
//		if (_enum_potentialInputState != Enum_InputState.LEFT) {
//			return;
//		}
//		break;
//	case Enum_InputState.RIGHT:
//		if (_enum_potentialInputState != Enum_InputState.RIGHT) {
//			return;
//		}
//		break;
//}

////oAbilityTreeManager.enum_inputStateThisFrame = _enum_potentialInputState;

//var _enum_ability = AbilityTree_GetAbility(oAbilityTreeManager.id_abilityTree, _enum_direction);
//var _ds_Ability_toCast = AbilityManager_GetAbilityFromEnum(_enum_ability);
//var _enum_abilityType = ds_Ability_GetType(_ds_Ability_toCast);

//switch (_enum_abilityType) {
//	case Enum_AbilityTypes.ONE_SHOT:
//		// Ignore cases where the mouse is being held down, or the global cooldown is on.
//		if (oAbilityTreeManager.enum_inputStateLastFrame != Enum_InputState.NONE || AbilityCaster_IsOnGlobalCooldown(oPlayer.id)) {
//			show_debug_message("here1")
//			return;
//		}
//		oAbilityTreeManager.bool_inputWasSuccessful = OneShotService_Cast(
//			oPlayer.id_oneShotService,
//			_enum_ability,
//			_num_targetX,
//			_num_targetY
//		);
//		break;

//	case Enum_AbilityTypes.CHANNEL:
//		// Ignore cases where the mouse wasn't held down and the global cooldown is on.
//		if (oAbilityTreeManager.enum_inputStateLastFrame == Enum_InputState.NONE && AbilityCaster_IsOnGlobalCooldown(oPlayer.id)) {
//			show_debug_message("here2")
//			return;
//		}
//		oAbilityTreeManager.bool_inputWasSuccessful = ChannelService_Channel(
//			oPlayer.id_channelService,
//			_enum_ability,
//			_num_targetX,
//			_num_targetY
//		);
//		break;

//	default:
//		ErrorHandler_FatalError("Ability type " + _enum_abilityType + " not handled by the ability tree manager");
//}

//if (oAbilityTreeManager.bool_inputWasSuccessful) {
//	oAbilityTreeManager.enum_latestSuccessfulDirection = _enum_direction;
//}

//oAbilityTreeManager.enum_inputStateThisFrame = _enum_potentialInputState;
