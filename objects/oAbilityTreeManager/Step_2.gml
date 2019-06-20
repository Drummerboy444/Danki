// mouse released
if (!bool_mouseDownThisFrame && bool_mouseDownLastFrame) {
	if (bool_inputWasSuccessful) {
		show_debug_message("walking");
		AbilityTree_WalkLeft(id_abilityTree);

		if (!AbilityTree_CanGoLeft(id_abilityTree) && !AbilityTree_CanGoRight(id_abilityTree)) {
			show_debug_message("resetting - success");
			AbilityTree_Reset(id_abilityTree);
		}
	} else {
		show_debug_message("resetting - unsuccessful")
		AbilityTree_Reset(id_abilityTree);
	}
	
	bool_inputWasSuccessful = false;
}

bool_mouseDownLastFrame = bool_mouseDownThisFrame;
bool_mouseDownThisFrame = false;
