event_inherited();

var _map_baseStats = ds_map_create();
_map_baseStats[? Enum_Stats.SPEED] = 3;
_map_baseStats[? Enum_Stats.HEALTH] = 20;

Mortal_Setup(_map_baseStats, true, true);

// Enumerable containing the movement modes that the player may utilise
enum Enum_PlayerMoveModes {
	FREEMOVE,
	DASHING,
	DASHED,
}

enum_currentMoveMode = Enum_PlayerMoveModes.FREEMOVE;	// Sets the default movement mode to FREEMOVE

// Dash
num_dashSpeed = 10 / 3;
num_dashedSlow = 1 / 4;
num_xDashMovement = 0;
num_yDashMovement = 0;
num_dashTimer = 0;
num_dashLength = 6;
num_slowTimer = 0;
num_slowLength = 20;
