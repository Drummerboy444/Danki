/// @function Mortal_BASIC_DEATH_SCRIPT() Death script that simply deletes the instance.
if(!Utility_ObjectIsAncestorOfInstance(oMortal, id)){
	ErrorHandler_FatalError("Attempted to run deathscript on an instance of " + object_index + " which is not an oMortal.");
}

instance_destroy();