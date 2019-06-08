for (var i = 0; i < ds_DepthGrid_GetHeight(ds_DepthGrid_depthGrid); i++) {
	var _id_depthObject = ds_DepthGrid_GetInstanceId(ds_DepthGrid_depthGrid, i);
	with (_id_depthObject) {
		draw_self();
	}
}
