event_inherited();
Pauseable_Setup();

id_abilityTreeRoot = noone;
id_currentAbilityTreeNode = noone;

var treeMap = ds_map_create();

var leftNode = ds_map_create();
var leftNode2 = ds_map_create();
ds_map_add(leftNode2, "ability", noone);
ds_map_add(leftNode2, "leftNode", noone);
ds_map_add(leftNode2, "rightNode", noone);
ds_map_add(leftNode, "ability", noone);
ds_map_add(leftNode, "leftNode", leftNode2);
ds_map_add(leftNode, "rightNode", noone);

var rightNode = ds_map_create();
ds_map_add(rightNode, "ability", noone);
ds_map_add(rightNode, "leftNode", noone);
ds_map_add(rightNode, "rightNode", noone);

ds_map_add(treeMap, "leftNode", leftNode);
ds_map_add(treeMap, "rightNode", rightNode);
AbilityTreeManager_INITIALISE(treeMap);
with(oAbilityTreeNode) {
	show_debug_message(id);
	show_debug_message(id_parent);
}
//with(oAbilityTreeRoot) {
//	show_debug_message(id_leftNode);
//	show_debug_message(id_rightNode);
//}