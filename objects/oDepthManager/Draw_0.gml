for (var i = 0; i < ds_DepthGrid_GetHeight(ds_DepthGrid_depthGrid); i++) {
	var _id_depthObject = ds_DepthGrid_GetInstanceId(ds_DepthGrid_depthGrid, i);
	with (_id_depthObject) {
		// We only want to draw the instances that actually have sprites.
		if (sprite_index > -1) {
			draw_self();
		}
	}
}
