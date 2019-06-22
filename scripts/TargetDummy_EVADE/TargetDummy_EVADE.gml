var _num_directionalX = x - id_target.x;
var _num_directionalY = y - id_target.y;

var _bool_clockwise = ds_ContextBag_Get(ds_ContextBag_bag, TargetDummy_EVADE, "bool_clockwise");

if (is_undefined(_bool_clockwise)) {
	_bool_clockwise = true;
	ds_ContextBag_Set(ds_ContextBag_bag, TargetDummy_EVADE, "bool_clockwise", true);
}

var _num_movementMultiplier = _bool_clockwise ? 1 : -1;

var _num_speed = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.SPEED);

var _num_totalDistance = sqrt(power((x - id_target.x),2) + power((y - id_target.y),2));

var _num_terminusX = x + _num_movementMultiplier * _num_directionalY * 2 * _num_speed / _num_totalDistance;
var _num_terminusY = y - _num_movementMultiplier * _num_directionalX * 2 * _num_speed / _num_totalDistance;

var _mp_grid_grid = MovementGridManager_GetGridForInstance(id);
if (MovementManager_GetCellByPosition(_mp_grid_grid, _num_terminusX, _num_terminusY)) {
	MovementManager_QueueMovement(MovementData_New(_num_terminusX, _num_terminusY, id, true));
} else {
	ds_ContextBag_Set(ds_ContextBag_bag, TargetDummy_EVADE, "bool_clockwise", !_bool_clockwise);
}