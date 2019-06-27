/// @function AbilityTreeManager_Cast(num_targetX, num_targetY, enum_direction)
/// @param {number} num_targetX
/// @param {number} num_targetY
/// @param {enum} enum_direction
var _num_targetX = argument[0];
var _num_targetY = argument[1];
var _enum_direction = argument[2];


if (_enum_direction == Enum_Direction.LEFT) {
	oAbilityTreeManager.bool_leftPressedThisFrame = true;
}
if (_enum_direction == Enum_Direction.RIGHT) {
	oAbilityTreeManager.bool_rightPressedThisFrame = true;
}


// check if no active press
if (is_undefined(oAbilityTreeManager.enum_activePressDirection)) {
	if (AbilityCaster_IsOnGlobalCooldown(oPlayer.id)) {
		return;
	} else {
		// set active press and continue
	}
}


if (_enum_direction == oAbilityTreeManager.enum_activePressDirection) {
	if (!ds_AbilityInputState_GetSuccessful(oAbilityTreeManager.ds_AbilityInputState_active)) {
		// continue through to cast
	} else {
		return;
	}
} else {
	// active press is not overrideable
	if (!ds_AbilityInputState_GetSuccessful(oAbilityTreeManager.ds_AbilityInputState_active)) {
		return
	}
	if (ds_AbilityInputState_GetSuccessful(oAbilityTreeManager.ds_AbilityInputState_active)) {
		if (ds_AbilityInputState_GetReady(oAbilityTreeManager.ds_AbilityInputState_active)) {
			// override (inc setting active press) and continue through to cast
		}
	}
}

