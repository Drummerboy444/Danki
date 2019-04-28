event_inherited();


id_ability = noone;

obj_targetType = oAbilityCaster;

num_targetX = 0;
num_targetY = 0;

scr_startChannel = noone;
scr_continueChannel = noone;
scr_cancelChannel = noone;
scr_finishChannel = noone;

num_currentTimer = 0;
bool_channelling = false; // if the channel script is being called
bool_attemptingToChannel = false; // if the owner of the service is attempting to channel
bool_readyToChannel = true; // if the owner of the service has stopped calling the channel script
