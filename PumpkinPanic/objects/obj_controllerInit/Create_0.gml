/// @description Insert description here
// You can write your code in this editor
global.gamepads = gamepad_get_device_count();
for (var i = 0; i < global.gamepads; i++;)
{
    if gamepad_is_connected(i)
    {
        global.gp[i] = true;
    }
    else
    {
        global.gp[i] = false;
    }
}