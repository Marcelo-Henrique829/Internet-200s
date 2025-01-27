/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_cursor) and mouse_check_button_pressed(mb_left))
{
	global.link = destino
	layer_sequence_create("transicao",0,0,seq_fade_in)
}