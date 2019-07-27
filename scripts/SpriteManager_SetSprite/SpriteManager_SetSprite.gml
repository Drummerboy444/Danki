/// @function SpriteManager_SetSprite(id_AbilityCaster, enum_SpriteActions_action) Goes up the sprite tree looking and
/// sets the first existing as the sprite.
/// @param {id} id_AbilityCaster
/// @param {Enum_SpriteActions} enum_SpriteActions_action
/// @returns Biddle.

var _id_AbilityCaster = argument[0];
var _enum_SpriteActions_action = argument[1];

with (oSpriteManager) {
	var _string_objectName = object_get_name(_id_AbilityCaster.object_index);
	var _string_trimmedName = string_delete(_string_objectName, 1, 1);
	var _string_spriteResource = "s" + _string_trimmedName;
	
	var _string_spriteName = _string_spriteResource
		+ "_"
		+ map_spriteActionToTag[? _enum_SpriteActions_action];
		
	var _string_directionalSpriteName = _string_spriteName
		+ "_"
		+ map_spriteDirectionToTag[? _id_AbilityCaster.spriteDirection];
	
	// Set the directional sprite if it exists.
	var _sprite_directionalSprite = asset_get_index(_string_directionalSpriteName);
	if(sprite_exists(_sprite_directionalSprite)) {
		_id_AbilityCaster.sprite_index = _sprite_directionalSprite;
		return;
	}
	
	// Set the non-directional sprite if it exists.
	var _sprite_sprite = asset_get_index(_string_spriteName);
	if(sprite_exists(_sprite_sprite)) {
		_id_AbilityCaster.sprite_index = _sprite_sprite;
		return;
	}
	
	// Move back up the sprite tree.
	var _enum_SpriteActions_parentAction = map_spriteParentMap[? _enum_SpriteActions_action];
	if(_enum_SpriteActions_parentAction == noone) {
		return;	
	}
	
	SpriteManager_SetSprite(_id_AbilityCaster, _enum_SpriteActions_parentAction);
}