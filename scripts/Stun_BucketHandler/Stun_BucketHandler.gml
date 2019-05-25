/// @function Stun_BucketHandler(id_abilityCaster, list_ds_EffectContext_bucket) Handles the bucket of stun effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_ds_EffectContext_bucket.
var _id_abilityCaster = argument[0];
var _list_ds_EffectContext_bucket = argument[1];

if(ds_list_size(_list_ds_EffectContext_bucket)==0) return;

ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, 0);
