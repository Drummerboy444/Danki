event_inherited();
Pauseable_Setup();

//enum Enum_InputState {
//	LEFT,
//	RIGHT,
//	NONE
//}

//enum_inputStateThisFrame = Enum_InputState.NONE;
//enum_inputStateLastFrame = Enum_InputState.NONE;

//enum_latestSuccessfulDirection = undefined;

//bool_inputWasSuccessful = false;

bool_leftPressedThisFrame = false;
bool_leftPressedLastFrame = false;
bool_rightPressedThisFrame = false;
bool_rightPressedLastFrame = false;

ds_AbilityInputState_left = ds_AbilityInputState_New();
ds_AbilityInputState_right = ds_AbilityInputState_New();

enum_activePressDirection = undefined;
ds_AbilityInputState_active = undefined;

var _map_leftLeftChild = ds_map_create();
ds_map_add(_map_leftLeftChild, "ability", Enum_Abilities.BLUE_BEAM);
ds_map_add(_map_leftLeftChild, "leftChild", noone);
ds_map_add(_map_leftLeftChild, "rightChild", noone);

var _map_leftRightChild = ds_map_create();
ds_map_add(_map_leftRightChild, "ability", Enum_Abilities.BLUE_BEAM);
ds_map_add(_map_leftRightChild, "leftChild", noone);
ds_map_add(_map_leftRightChild, "rightChild", noone);

var _map_rightLeftChild = ds_map_create();
ds_map_add(_map_rightLeftChild, "ability", Enum_Abilities.YELLOW_CIRCLE);
ds_map_add(_map_rightLeftChild, "leftChild", noone);
ds_map_add(_map_rightLeftChild, "rightChild", noone);

var _map_rightRightChild = ds_map_create();
ds_map_add(_map_rightRightChild, "ability", Enum_Abilities.BLUE_BEAM);
ds_map_add(_map_rightRightChild, "leftChild", noone);
ds_map_add(_map_rightRightChild, "rightChild", noone);

var _map_leftChild = ds_map_create();
ds_map_add(_map_leftChild, "ability", Enum_Abilities.YELLOW_CIRCLE);
ds_map_add(_map_leftChild, "leftChild", _map_leftLeftChild);
ds_map_add(_map_leftChild, "rightChild", _map_leftRightChild);

var _map_rightChild = ds_map_create();
ds_map_add(_map_rightChild, "ability", Enum_Abilities.BLUE_BEAM);
ds_map_add(_map_rightChild, "leftChild", _map_rightLeftChild);
ds_map_add(_map_rightChild, "rightChild", _map_rightRightChild);

var _map_abilityTree = ds_map_create();
ds_map_add(_map_abilityTree, "leftChild", _map_leftChild);
ds_map_add(_map_abilityTree, "rightChild", _map_rightChild);

id_abilityTree = AbilityTree_Instantiate(_map_abilityTree);
