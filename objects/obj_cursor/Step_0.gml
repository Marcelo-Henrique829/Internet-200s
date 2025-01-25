/// @description Insert description here
// You can write your code in this editor




 
if(!mouse_check_button(mb_right))
{
	x = mouse_x
	y = mouse_y
	
}
else
{	
	window_mouse_set(x,y)
}

 
 if(place_meeting(x,y,icones))
 {
	image_index = 1
 }
 else
 {
	image_index = 0;
 }

