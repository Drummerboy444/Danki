if (id_target) {
	MovementManager_QueueMovement(
		MovementData_New(
			id_target.x,
			id_target.y,
			id,
			true
		)
	);
}