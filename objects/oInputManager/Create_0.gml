// Enumerable of all movement actions, bound by the below map
enum Enum_Actions {
	MOVE_UP,
	MOVE_DOWN,
	MOVE_LEFT,
	MOVE_RIGHT,
	LEFT_ABILITY,
	RIGHT_ABILITY,
	DASH,
}

// Map containing all keybindings designed to allow player overwrite
map_keyBindings = ds_map_create();
map_keyBindings[? Enum_Actions.MOVE_UP] = ord("W");
map_keyBindings[? Enum_Actions.MOVE_DOWN] = ord("S");
map_keyBindings[? Enum_Actions.MOVE_LEFT] = ord("A");
map_keyBindings[? Enum_Actions.MOVE_RIGHT] = ord("D");
map_keyBindings[? Enum_Actions.DASH] = ord(" ");
map_keyBindings[? Enum_Actions.LEFT_ABILITY] = mb_left;
map_keyBindings[? Enum_Actions.RIGHT_ABILITY] = mb_right;


var treeMap = ds_map_create();
var leftNode = ds_map_create();
leftNode[? "ability"] = noone;
leftNode[? "leftNode"] = noone;
leftNode[? "rightNode"] = noone;
var rightNode = ds_map_create();
rightNode[? "ability"] = noone;
rightNode[? "leftNode"] = noone;
rightNode[? "rightNode"] = noone;
treeMap[? "leftNode"] = leftNode;
treeMap[? "rightNode"] = rightNode;
AbilityTreeManager_Initialise(treeMap);
show_debug_message("-------------------");
show_debug_message("made it out!");
show_debug_message("-------------------");
with(oAbilityTreeNode) {
	show_debug_message("here");
}

