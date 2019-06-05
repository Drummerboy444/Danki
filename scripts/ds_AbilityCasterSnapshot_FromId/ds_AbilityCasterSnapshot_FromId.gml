/// @function ds_AbilityCasterSnapshot_FromId(id_abilityCaster) Helper function to get an ability caster snapshot
///		from the id of an ability caster.
/// @param {id} id_abilityCaster The id of the ability caster to create the snapshot from.
/// @returns {ds_AbilityCasterSnapshot} The newly created snapshot.
var _id_abilityCaster = argument[0];


if (!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)) {
	ErrorHandler_FatalError("Cannot create an ability caster snapshot from a non-ability caster id");
}

return ds_AbilityCasterSnapshot_New(
	_id_abilityCaster.ds_Stats_frameStats,
	ds_EffectContext_ListToEffectData(_id_abilityCaster.list_ds_EffectContext_activeEffects)
);
