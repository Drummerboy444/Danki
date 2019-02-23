event_inherited();
Pauseable_Setup();


id_abilityTree = noone; // Should call AbilityTree_Instantiate when we get rid of the test code below.

#region Test for the initialisation of the ability tree, this can go when we're using real data
var treeMap = ds_map_create();
var leftChild = ds_map_create();
var leftChild2 = ds_map_create();
ds_map_add(leftChild2, "ability", Enum_Abilities.SLASH);
ds_map_add(leftChild2, "leftChild", noone);
ds_map_add(leftChild2, "rightChild", noone);
ds_map_add(leftChild, "ability", Enum_Abilities.SLASH);
ds_map_add(leftChild, "leftChild", leftChild2);
ds_map_add(leftChild, "rightChild", noone);
var rightChild = ds_map_create();
ds_map_add(rightChild, "ability", Enum_Abilities.SHIELD_BASH);
ds_map_add(rightChild, "leftChild", noone);
ds_map_add(rightChild, "rightChild", noone);
ds_map_add(treeMap, "leftChild", leftChild);
ds_map_add(treeMap, "rightChild", rightChild);
id_abilityTree = AbilityTree_Instantiate(treeMap);

with (id_abilityTree) {
	show_debug_message(id_abilityTreeRoot);
	show_debug_message(id_abilityTreeRoot.id_leftChild);
	show_debug_message(id_abilityTreeRoot.id_rightChild);
	show_debug_message(id_abilityTreeRoot.id_leftChild.id_leftChild);
	show_debug_message(id_abilityTreeRoot.id_leftChild.id_rightChild);
	show_debug_message(id_abilityTreeRoot.id_rightChild.id_leftChild);
	show_debug_message(id_abilityTreeRoot.id_rightChild.id_rightChild);
	show_debug_message(id_abilityTreeRoot.id_leftChild.id_leftChild.id_leftChild);
	show_debug_message(id_abilityTreeRoot.id_leftChild.id_leftChild.id_rightChild);
}
with (id_abilityTree) {
	show_debug_message(id_currentAbilityTreeNode);
	AbilityTree_WalkRight(id);
	show_debug_message(id_currentAbilityTreeNode);
	AbilityTree_Reset(id);
	show_debug_message(id_currentAbilityTreeNode);
	AbilityTree_WalkLeft(id);
	show_debug_message(id_currentAbilityTreeNode);
	AbilityTree_WalkLeft(id);
	show_debug_message(id_currentAbilityTreeNode);
}
#endregion
