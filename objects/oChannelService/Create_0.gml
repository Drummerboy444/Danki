event_inherited();


scr_startChannel = noone;
scr_channel = noone;
scr_cancelChannel = noone;
scr_finishChannel = noone;

num_currentTimer = 0;
bool_channelling = false; // if the channel script is being called
bool_attemptingToChannel = false; // if the owner of the service is attempting to channel
bool_readyToChannel = true; // if the owner of the service has stopped calling the channel script
