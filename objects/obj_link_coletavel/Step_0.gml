/// @description Insert description here
// You can write your code in this editor

var _cx = camera_get_view_x(view_camera[0]) //pegando o x da camera
var _cy = camera_get_view_y(view_camera[0])

if(pegou)
{
	
	layer_sequence_create("transicao",_cx,_cy,seq_fade_in)
	pegou = 0;
	
} 