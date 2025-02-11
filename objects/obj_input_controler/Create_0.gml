/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

global.gamepad_id = noone;



game_pad_conect = function()
{
	var _game_pad_slots = gamepad_get_device_count()
	
	
	for(var _i = 0; _i<_game_pad_slots; _i++)
	{
		if(gamepad_is_connected(_i))
		{
			global.gamepad_id = _i
			gamepad_set_axis_deadzone(global.gamepad_id,0.25)
			return true;
		}
	}
	
	return false
}