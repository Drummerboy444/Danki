// mouse released
if (
	enum_inputStateThisFrame == Enum_InputState.NONE &&
	enum_inputStateLastFrame != Enum_InputState.NONE
) {
	if (bool_inputWasSuccessful) {
		show_debug_message("walking");
		AbilityTree_Walk(id_abilityTree, Enum_Direction.LEFT);

		if (!AbilityTree_CanWalk(id_abilityTree)) {
			show_debug_message("resetting - success");
			AbilityTree_Reset(id_abilityTree);
		}
	} else {
		show_debug_message("resetting - unsuccessful")
		AbilityTree_Reset(id_abilityTree);
	}
	
	bool_inputWasSuccessful = false;
}

enum_inputStateLastFrame = enum_inputStateThisFrame;
enum_inputStateThisFrame = Enum_InputState.NONE;
