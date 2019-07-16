/// @function ds_SpriteTree_New(enum_SpriteActions_action, array_ds_Spritetree_subtrees) Creates a new spritetree.
/// @param {enum_SpriteActions} enum_SpriteActions_action The action at the top of the tree.
/// @param {array_ds_Spritetree} array_ds_Spritetree_subtrees The array of subtrees.
/// @returns {ds_Spritetree} The new sprite tree.

var _enum_SpriteActions_action = argument[0];
var _array_ds_Spritetree_subtrees = argument[1];


return [_enum_SpriteActions_action, _array_ds_Spritetree_subtrees];