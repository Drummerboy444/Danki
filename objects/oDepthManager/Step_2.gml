ds_DepthGrid_Reset(ds_DepthGrid_depthGrid);

with (oDepth) {
	ds_DepthGrid_Add(other.ds_DepthGrid_depthGrid, id);
}

ds_DepthGrid_Sort(ds_DepthGrid_depthGrid);
