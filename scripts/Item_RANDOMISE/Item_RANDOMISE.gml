/// @function Item_RANDOMISE() Randomises the stats on the item.


var _num_totalStats = array_length_1d(arr_enum_Stats_randomisableStats);

if (_num_totalStats <= 0) {
	return;
}

repeat (num_totalRandomisablePoints) {
	var _enum_Stats_stat = arr_enum_Stats_randomisableStats[irandom(_num_totalStats - 1)];
	var _num_currentValue = ds_Stats_Get(ds_Stats_stats, _enum_Stats_stat);
	ds_Stats_Set(ds_Stats_stats, _enum_Stats_stat, _num_currentValue + 1);
}
