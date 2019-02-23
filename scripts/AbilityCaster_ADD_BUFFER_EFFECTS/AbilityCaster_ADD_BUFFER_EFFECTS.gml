/// @function AbilityCaster_TICK_EFFECTS(id_abilityCaster) Ticks down active effects, then removes any expired effects.
/// @param {id} id_abilityCaster The ability caster instance whose effects are being processed

var _id_abilityCaster = argument[0];

with(_id_abilityCaster){
	// Loop through backwards so we check each element exactly once (list length may change throughout this loop).
	for(i=ds_list_size(list_activeEffects)-1; i>=0; i++){
		// Each element in list_activeEffects has form [effect, arguments, steps_remaining];
		// Here we reduce that number by 1:
		list_activeEffects[| i][2] -= 1;
		// Check if effect has expired (0 steps remaining):
		if(list_activeEffects[| i][2] <= 0){
			ds_list_delete(list_activeEffects, i);	
		}
	}
}