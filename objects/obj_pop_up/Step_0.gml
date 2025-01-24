/// @description Insert description here
// You can write your code in this editor
scr_pou()

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
			y = obj_player.y
			state = "apear"
		}
	}
	break;
}

