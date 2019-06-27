if (bool_leftPressedLastFrame && !bool_leftPressedThisFrame) {
	// if this was the active state, then remove it (value and enum)
	ds_AbilityInputState_Released(ds_AbilityInputState_left);
}
if (bool_rightPressedLastFrame && !bool_rightPressedThisFrame) {
	// if this was the active state, then remove it (value and enum)
	ds_AbilityInputState_Released(ds_AbilityInputState_right);
}

// for walking, could just keep some booleans to check if success this frame and not
// last frame and only walk then using the active press direction...




bool_leftPressedLastFrame = bool_leftPressedThisFrame;
bool_leftPressedThisFrame = false;
bool_rightPressedLastFrame = bool_rightPressedThisFrame;
bool_rightPressedThisFrame = false;


//// Check if mouse released this frame
//if (
//	enum_inputStateThisFrame == Enum_InputState.NONE &&
//	enum_inputStateLastFrame != Enum_InputState.NONE
//) {
//	if (bool_inputWasSuccessful) {
//		show_debug_message("walking");
//		AbilityTree_Walk(id_abilityTree, enum_latestSuccessfulDirection);

//		if (!AbilityTree_CanWalk(id_abilityTree)) {
//			show_debug_message("resetting - success");
//			AbilityTree_Reset(id_abilityTree);
//		}
//	} else {
//		show_debug_message("resetting - unsuccessful")
//		AbilityTree_Reset(id_abilityTree);
//	}
	
//	bool_inputWasSuccessful = false;
//}

//enum_inputStateLastFrame = enum_inputStateThisFrame;
//enum_inputStateThisFrame = Enum_InputState.NONE;
