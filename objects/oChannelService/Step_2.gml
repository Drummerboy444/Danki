if (!bool_attemptingToChannel) {
	bool_haveStoppedInput = true;
	if (bool_channelling) {
		ChannelService_CANCEL_CHANNEL();
	}
}

bool_attemptingToChannel = false;