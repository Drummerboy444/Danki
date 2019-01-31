id_abilityTreeRoot = noone;
id_currentAbilityTreeNode = noone;

#region Test for the initialisation of the ability tree, this can go when we're using real data
var treeMap = ds_map_create();
var leftChild = ds_map_create();
var leftChild2 = ds_map_create();
ds_map_add(leftChild2, "ability", "slam");
ds_map_add(leftChild2, "leftChild", noone);
ds_map_add(leftChild2, "rightChild", noone);
ds_map_add(leftChild, "ability", "slash");
ds_map_add(leftChild, "leftChild", leftChild2);
ds_map_add(leftChild, "rightChild", noone);
var rightChild = ds_map_create();
ds_map_add(rightChild, "ability", "shield");
ds_map_add(rightChild, "leftChild", noone);
ds_map_add(rightChild, "rightChild", noone);
ds_map_add(treeMap, "leftChild", leftChild);
ds_map_add(treeMap, "rightChild", rightChild);
AbilityTreeManager_INITIALISE(treeMap);
with (oAbilityTreeManager) {
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
with (oAbilityTreeNode) {
	show_debug_message(id_parent);
	show_debug_message(id);
	show_debug_message(scr_ability);
}
#endregion
