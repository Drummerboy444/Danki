if (!bool_attemptingToChannel) {
	bool_readyToChannel = true;
	if (bool_channelling) {
		ChannelService_CANCEL_CHANNEL();
	}
}

bool_attemptingToChannel = false; // This will be set to true sometime over the next step if the owner is
                                  // attempting to channel still.