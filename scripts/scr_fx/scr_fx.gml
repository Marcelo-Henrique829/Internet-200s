// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_explosion_fx(){
	
	var _explosion = instance_create_layer(x,y,layer,obj_explosion_efx)
	global.shake = 10
	instance_destroy(other)
	
}