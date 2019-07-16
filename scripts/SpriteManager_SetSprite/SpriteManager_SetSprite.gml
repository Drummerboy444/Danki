/// @function SpriteManager_SetSprite(id_AbilityCaster, enum_SpriteActions_action, bool_mirror) Goes up the sprite tree looking and
/// sets the first existing as the sprite.
/// @param {id} id_AbilityCaster
/// @param {Enum_SpriteActions} enum_SpriteActions_action
/// @param {bool} bool_mirror
/// @returns Biddle.

var _id_AbilityCaster = argument[0];
var _enum_SpriteActions_action = argument[1];
var _bool_mirror = argument[2];

with (oSpriteManager) {
	var _string_spriteName = "sprite_"
		+ object_get_name(_id_AbilityCaster.object_index)
		+ "_"
		+ map_spriteActionToTag[? _enum_SpriteActions_action];
		
	var _sprite_sprite = asset_get_index(_string_spriteName);
	if(sprite_exists(_sprite_sprite)) {
		_id_AbilityCaster.sprite_index = _sprite_sprite;
		_id_AbilityCaster.bool_mirror = _bool_mirror;
		return;
	}
	
	var _enum_SpriteActions_parentAction = map_spriteParentMap[? _enum_SpriteActions_action];
	if(_enum_SpriteActions_parentAction == noone) {
		return;	
	}
	
	SpriteManager_SetSprite(_id_AbilityCaster, _enum_SpriteActions_parentAction, _bool_mirror);
}