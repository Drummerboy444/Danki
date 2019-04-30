/// @function Stun_BucketHandler(id_abilityCaster, list_bucket) Handles the bucket of stun effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_bucket.

var _id_abilityCaster = argument[0];
var _list_bucket = argument[1];

if(ds_list_size(_list_bucket)==0) return;

ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, 0);