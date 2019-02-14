event_inherited();
Mortal_Setup(10, true, true);
show_debug_message("----------")
show_debug_message(id)
show_debug_message(id_channelService);
show_debug_message(id_channelService.id_owner);
show_debug_message(id_oneShotService);
show_debug_message(id_oneShotService.id_owner);
show_debug_message("----------")

// Enumerable containing the movement modes that the player may utilise
enum Enum_PlayerMoveModes {
	FREEMOVE,
	DASHING,
	DASHED,
}

enum_currentMoveMode = Enum_PlayerMoveModes.FREEMOVE;	// Sets the default movement mode to FREEMOVE

// Movement
num_baseMovementSpeed = 3;

// Dash
num_dashSpeed = 10 / 3;
num_dashedSlow = 1 / 4;
num_xDashMovement = 0;
num_yDashMovement = 0;
num_dashTimer = 0;
num_dashLength = 6;
num_slowTimer = 0;
num_slowLength = 20;
