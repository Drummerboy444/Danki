/// @function SpriteTree_New(enum_SpriteActions_action, array_SpriteTree_subtrees) Creates a new spritetree.
/// @param {enum_SpriteActions} enum_SpriteActions_action The action at the top of the tree.
/// @param {array_SpriteTree} array_SpriteTree_subtrees The array of subtrees.
/// @returns {SpriteTree} The new sprite tree.

var _enum_SpriteActions_action = argument[0];
var _array_SpriteTree_subtrees = argument[1];


return [_enum_SpriteActions_action, _array_SpriteTree_subtrees];