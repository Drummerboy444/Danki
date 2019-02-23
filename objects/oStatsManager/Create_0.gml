enum Enum_Stats {
	STRENGTH,
	SPEED,
	AGILITY,
	length // When kept at the end, we can always know the length of the enum, so we can loop through the enum
	       // and it won't break when we add more stats. Looking at the forums it seems like this is the given
		   // solution for looping through an enum.
}
