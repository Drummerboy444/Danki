var _num_directionalX = x - id_target.x;
var _num_directionalY = y - id_target.y;

var _num_speed = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.SPEED);
var _num_totalDistance = sqrt(power((x - id_target.x),2) + power((y - id_target.y),2));

var _num_terminusX = x + _num_directionalX * 2 * _num_speed / _num_totalDistance;
var _num_terminusY = y + _num_directionalY * 2 * _num_speed / _num_totalDistance;

MovementManager_QueueMovement(MovementData_New(_num_terminusX, _num_terminusY, id, Enum_MovementType.LINEAR_SLIDING));