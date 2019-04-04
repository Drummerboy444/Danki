/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(keyboard_check(vk_left)) {
	var _MovementData_data = MovementData_New(0,0,self);
	MovementManager_QueueMovement(_MovementData_data);
}
