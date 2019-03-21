#region Doc
/// @function AbilityCaster_RETREAT_DEFAULT() Default retreat logic. Just queues move of 40px in direction opposite to target.
#endregion


if(target == noone){
	return
}

var _num_retreatDistance = 40;

// Get displacement from target on both axes.
var dispX = x - target.x;
var dispY = y - target.y;

// Calculate displacement from target.
var disp = sqrt(sqr(dispX) + sqr(dispY));

// Add 20px in direction from target to self.
var destX = x + _num_retreatDistance*dispX/disp;
var destY = y + _num_retreatDistance*dispY/disp;

// TODO: QueueMovement(self, destX, destY);

return;