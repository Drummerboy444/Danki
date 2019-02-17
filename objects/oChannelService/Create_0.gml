event_inherited();


scr_startChannel = noone;
scr_channel = noone;
scr_cancelChannel = noone;
scr_finishChannel = noone;

num_currentTimer = 0;
bool_channelling = false;
bool_attemptingToChannel = false; // true if the owner of the service is attempting to channel
bool_haveStoppedInput = true; // true if the owner of the service has stopped calling the channel script
