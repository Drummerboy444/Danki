arr_maxSizes = [16,24,32,48,64];

map_movementGrids = ds_map_create();
map_regenerationQueued = ds_map_create();

// TODO: have this be called when we enter a new room, rather than here
MovementGridManager_Initialise();
