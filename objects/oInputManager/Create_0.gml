// Enumerable of all movement actions, bound by the below map
#region Player actions enumerable
enum enum_Actions {
	MOVE_UP,
	MOVE_DOWN,
	MOVE_LEFT,
	MOVE_RIGHT,
	LEFT_ABILITY,
	RIGHT_ABILITY,
	DASH,
}
#endregion

// Enumerable containing the 3 movement modes that the player may utilise, used in Player_Move script
#region Player movement modes enumerable
enum enum_moveModes {
	FREEMOVE,
	DASHING,
	DASHED,
}
#endregion

str_moveModes = enum_moveModes.FREEMOVE;	// Sets the default movement mode to FREEMOVE

num_dashTimer = 0;  // Timer to determine how long a dash has occured, used in Player_Move script
num_slowTimer = 0;  // Timer to determine how long the post dash slow has occured, used in Player_Move script

// Map containing all keybindings designed to allow player overwrite
#region Key bindings map creation
map_keyBindings = ds_map_create();
map_keyBindings[? enum_Actions.MOVE_UP] = ord("W");
map_keyBindings[? enum_Actions.MOVE_DOWN] = ord("S");
map_keyBindings[? enum_Actions.MOVE_LEFT] = ord("A");
map_keyBindings[? enum_Actions.MOVE_RIGHT] = ord("D");
map_keyBindings[? enum_Actions.DASH] = ord(" ");
map_keyBindings[? enum_Actions.LEFT_ABILITY] = mb_left;
map_keyBindings[? enum_Actions.RIGHT_ABILITY] = mb_right;
#endregion
