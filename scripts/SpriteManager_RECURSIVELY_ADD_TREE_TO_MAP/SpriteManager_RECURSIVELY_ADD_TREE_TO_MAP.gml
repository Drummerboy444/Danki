/// @function SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(ds_map_spriteParentMap, SpriteTree_tree) Recursively adds a sprite tree to a map from
/// Sprite actions to parent actions.
/// @param {ds_map} ds_map_spriteParentMap
/// @param {tree} SpriteTree_tree. A sprite tree is an array of [spriteAction,subtree] elements.
/// @returns Biddle.

var map_spriteParentMap = argument[0];
var _SpriteTree_tree = argument[1];

var _enum_SpriteActions_action = SpriteTree_GetAction(_SpriteTree_tree);
var _array_SpriteTree_subTrees = SpriteTree_GetSubtrees(_SpriteTree_tree);

for(var i = 0; i < array_length_1d(_array_SpriteTree_subTrees); i++)
{
	var _SpriteTree_subtree = _array_SpriteTree_subTrees[i];
	var _enum_SpriteActions_childaction = SpriteTree_GetAction(_SpriteTree_subtree);
	
	map_spriteParentMap[? _enum_SpriteActions_childaction] = _enum_SpriteActions_action;
	
	SpriteManager_RECURSIVELY_ADD_TREE_TO_MAP(map_spriteParentMap, _SpriteTree_subtree);
}
