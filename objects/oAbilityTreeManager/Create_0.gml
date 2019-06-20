event_inherited();
Pauseable_Setup();

bool_mouseDownThisFrame = false;
bool_mouseDownLastFrame = false;

bool_inputWasSuccessful = false;

bool_channellingThisFrame = false;
bool_channelledLastFrame = false;

bool_successfulChannelThisFrame = false;
bool_successfulChannelLastFrame = false;

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
