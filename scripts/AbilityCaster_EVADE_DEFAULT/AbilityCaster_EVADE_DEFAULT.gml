#region Doc
/// @function AbilityCaster_RETREAT_DEFAULT() Default retreat logic. Just queues move of 40px in direction opposite to target.
#endregion

//This will make it evade ALL abilities.
//Consider splitting oAbility into two children.
var _id_nearestAbility = instance_nearest(x, y, oAbility);

if (_id_nearestAbility != noone) {
		return;
}

var _num_evadeDistance = 40;

// Get displacement from target on both axes.
var _num_dispX = x - _id_nearestAbility.x;
var _num_dispY = y - _id_nearestAbility.y;

// Calculate displacement from target.
var _numdisp = sqrt(sqr(_num_dispX) + sqr(_num_dispY));

// Add evade distance in direction perpendicular to nearest ability.
var _num_destX = x + _num_evadeDistance*_num_dispY/_num_disp;
var _num_destY = y - _num_evadeDistance*_num_dispX/_num_disp;

// TODO: QueueMovement(self, _num_destX, _num_destY);

return;
