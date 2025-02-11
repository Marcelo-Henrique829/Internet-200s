/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y,obj_player))
{
	pegou = 1
	instance_create_layer(x,y,layer,obj_colected)
	global.score++
	instance_destroy()
}