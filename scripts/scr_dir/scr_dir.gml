// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dir(_bool){
	
	if(!_bool) return
	
	var _i = global.inputs
	
	if(_i.left or _i.right and hspd!=0)
	{
		dir = point_direction(0,0,_i.right - _i.left,0)
	}
	
	show_debug_message(dir)

}