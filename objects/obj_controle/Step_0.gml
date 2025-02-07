/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("R")))
{
	game_restart()
}

if(gerar_inimigos and alarm[0]<=0)
{
	if(!instance_exists(obj_pop_up) )
	{
		var _tempo = random_range(20,50)
		
		  alarm[0] = _tempo
	}
}


show_debug_message(obj_camera.resolution_scale)

if sla
{
	obj_camera.resolution_scale = lerp(obj_camera.resolution_scale,1.1,0.1)

}



