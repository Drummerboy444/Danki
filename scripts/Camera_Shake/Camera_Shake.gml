/// @function Camera_Shake(num_intensity, num_duration) Causes the camera to shake randomly around the current
///		target's position for a given number of frames.
/// @param {num} intesity of the shake.
/// @param {num} duration of shake in frames.

var _num_intensity = argument[0];
var _num_duration = argument[1];

show_debug_message("Starting shake.");

with (oCamera) {
//Disable smoothing during a shake
num_lerpFactor = 1;
bool_isShaking = true;
num_shakeCounterEnd = _num_duration;
num_shakeIntensity = _num_intensity;
}