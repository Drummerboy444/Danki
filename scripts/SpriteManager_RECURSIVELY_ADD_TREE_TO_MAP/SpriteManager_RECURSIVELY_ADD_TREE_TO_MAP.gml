/// @function SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(ds_map_spriteParentMap, tree_spriteTree) Recursively adds a sprite tree to a map from
/// Sprite actions to parent actions.
/// @param {ds_map} ds_map_spriteParentMap
/// @param {tree} tree_spriteTree. A sprite tree is an array of [spriteAction,subtree] elements.
/// @returns Biddle.

var _ds_map_spriteParentMap = argument[0];
var _tree_spriteTree = argument[1];

var _Enum_SpriteActions_action = _tree_spriteTree[0];
var _arr_tree_children = _tree_spriteTree[1];

for(var i = 0; i < array_length_1d(_arr_tree_children); i++)
{
	var _tree_subtree = _arr_tree_children[i];
	var _Enum_SpriteActions_childaction = _tree_subtree[0];
	
	_ds_map_spriteParentMap[? _Enum_SpriteActions_childaction] = _Enum_SpriteActions_action;
	
	SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(_ds_map_spriteParentMap, _tree_subtree);
}
