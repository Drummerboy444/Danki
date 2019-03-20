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
var destX = x + 40*dispX/disp;
var destY = x + 40*dispY/disp;

// TODO: QueueMovement(self, destX, destY);

return;