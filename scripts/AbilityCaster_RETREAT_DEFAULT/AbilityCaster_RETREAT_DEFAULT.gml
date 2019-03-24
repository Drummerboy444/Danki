#region Doc
/// @function AbilityCaster_RETREAT_DEFAULT() Default retreat logic. Just queues move of 40px in direction opposite to target.
#endregion


if(id_target == noone){
	return
}

var _num_retreatDistance = 40;

// Get displacement from target on both axes.
var _num_dispX = x - id_target.x;
var _num_dispY = y - id_target.y;

// Calculate displacement from target.
var _numdisp = sqrt(sqr(_num_dispX) + sqr(_num_dispY));

// Add 40px in direction from target to self.
var _num_destX = x + _num_retreatDistance*_num_dispX/_num_disp;
var _num_destY = y + _num_retreatDistance*_num_dispY/_num_disp;

// TODO: QueueMovement(self, destX, destY);

return;