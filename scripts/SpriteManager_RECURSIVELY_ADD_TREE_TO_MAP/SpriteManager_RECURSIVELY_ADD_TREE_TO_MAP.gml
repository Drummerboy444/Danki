/// @function SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(ds_map_spriteParentMap, ds_SpriteTree_tree) Recursively adds a sprite tree to a map from
/// Sprite actions to parent actions.
/// @param {ds_map} ds_map_spriteParentMap
/// @param {tree} ds_SpriteTree_tree. A sprite tree is an array of [spriteAction,subtree] elements.
/// @returns Biddle.

var map_spriteParentMap = argument[0];
var _ds_SpriteTree_tree = argument[1];

var _enum_SpriteActions_action = ds_SpriteTree_GetAction(_ds_SpriteTree_tree);
var _array_ds_SpriteTree_subTrees = ds_SpriteTree_GetSubtrees(_ds_SpriteTree_tree);

for(var i = 0; i < array_length_1d(_array_ds_SpriteTree_subTrees); i++)
{
	var _ds_SpriteTree_subtree = _array_ds_SpriteTree_subTrees[i];
	var _enum_SpriteActions_childaction = ds_SpriteTree_GetAction(_ds_SpriteTree_subtree);
	
	map_spriteParentMap[? _enum_SpriteActions_childaction] = _enum_SpriteActions_action;
	
	SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(map_spriteParentMap, _ds_SpriteTree_subtree);
}
