/// @function SpriteManager_SetSprite(id_AbilityCaster, Enum_SpriteActions_action) Goes up the sprite tree looking and sets the first existing
/// as the sprite.
/// @param {id} id_AbilityCaster
/// @param {Enum_SpriteActions} Enum_SpriteActions_action.
/// @returns Biddle.

var _id_AbilityCaster = argument[0];
var _Enum_SpriteActions_action = argument[1];

with (oSpriteManager) {
	var _string_spriteName = "sprite_"
		+ object_get_name(_id_AbilityCaster.object_index)
		+ "_"
		+ ds_map_spriteActionToTag[? _Enum_SpriteActions_action];
		
	var _sprite_sprite = asset_get_index(_string_spriteName);
	if(sprite_exists(_sprite_sprite)) {
		_id_AbilityCaster.sprite_index = _sprite_sprite;
		return;
	}
	
	var _Enum_SpriteActions_parentAction = ds_map_spriteParentMap[? _Enum_SpriteActions_action];
	if(_Enum_SpriteActions_parentAction == noone) {
		return;	
	}
	
	SpriteManager_SetSprite(_id_AbilityCaster, _Enum_SpriteActions_parentAction);
}