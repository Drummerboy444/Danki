event_inherited();

var _ds_Stats_baseStats = ds_Stats_New();
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.SPEED, 3);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.HEALTH, 10);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.HASTE, 5);
Mortal_Setup(true, true, _ds_Stats_baseStats, AbilityCaster_NO_OP_PLAN, 0);

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
