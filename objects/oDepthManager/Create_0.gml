ds_DepthGrid_depthGrid = ds_DepthGrid_New();


ds_DepthGrid_Add(ds_DepthGrid_depthGrid, oPlayer.id);
show_debug_message(ds_DepthGrid_GetInstanceId(ds_DepthGrid_depthGrid, 0));
show_debug_message(ds_DepthGrid_GetYPosition(ds_DepthGrid_depthGrid, 0));
