for (var i = 0; i < ds_DepthGrid_GetHeight(ds_DepthGrid_depthGrid); i++) {
	var _id_depthObject = ds_DepthGrid_GetInstanceId(ds_DepthGrid_depthGrid, i);
	with (_id_depthObject) {
		// We only want to draw the instances that actually have sprites.
		if (sprite_index > -1) {
			//Only apply combat shaders to oAbilityCasters
			if (object_is_ancestor(object_index, oAbilityCaster)){
				AbilityCaster_PICK_SHADER();	
			} 
			image_xscale = bool_mirror ? -1 : 1;
			draw_self();
			shader_reset();
		}
	}
}
