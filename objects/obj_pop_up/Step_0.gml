/// @description Insert description here
// You can write your code in this editor
scr_pou()


if(place_meeting(x,y,obj_cursor))
{
	if(mouse_check_button_pressed(mb_left))
	{
		state = "hit"
	}
}


switch(state)
{
	case "apear":
	{
		sprite_index = spr_popup_apear
		if(image_index>=image_number-1)
		{
			state = "iddle"
		}
	}
	break;
	
	case "iddle":
	{
		sprite_index = spr_pop_up
		if(distance_to_object(obj_player)>300)
		{
			x = obj_player.x + sign(obj_player.hspd*-1) * 50
			y = obj_player.y + sign(obj_player.vspd*-1) * 50
			state = "apear"
		}
	}
	break;
	
	case "hit":
	{
		sprite_index = spr_popup_hit
		
		if(image_index>=image_number-1)
		{
			state = "iddle"
		}
		
		if(place_meeting(x,y,obj_cursor))
		{
			if(mouse_check_button_pressed(mb_left))
			{
				image_index = 0;
			}
		}
	}
	break;
}

show_debug_message(life)