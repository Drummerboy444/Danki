/// @function AbilityCaster_FIND_TARGET_DEFAULT() Default find target logic.


// Things that we might want as instance variables. Assume they are for this script.
num_agroRange = 100;
id_target = noone;  // will be set by this script.
obj_targetType = oEnemy;  // oACs will probably know the object index of what they might target.


var _id_potentialTarget = instance_nearest(x, y, obj_targetType); // probably want a way to not target ourselves?
if (_id_potentialTarget == noone) {
	id_target = noone;
	return;
}

if (distance_to_point(_id_potentialTarget.x, _id_potentialTarget.y) <= num_agroRange) {
	id_target = _id_potentialTarget;
} else {
	id_target = noone;
}
