 #region inputs

var _esquerda = keyboard_check(ord("A"))
var _direita = keyboard_check(ord("D"))
var _jump = keyboard_check_direct(vk_space)

#endregion

var _chao = place_meeting(x,y+1,colisores)
var _move = _direita - _esquerda

if(hspd!=0)
{
	image_xscale = sign(hspd)
}

vspd = grv + vspd

switch(state)
{
	case "iddle":
	{
		sprite_index = spr_stickman_iddle
		
		hspd = spd*_move
		
 		if(hspd!=0)
		{
			sprite_index = spr_stickman_run
		}

		
		if(_chao and _jump)
		{
			vspd -= jump_force
			
			state = "jump"
		}
	
	}
	break;
	
	case "jump":
	{
		sprite_index = spr_stickman_jump
		hspd = spd*_move
		
		if(scr_end_animation(spr_stickman_jump) or _chao)
		{
			state = "iddle"
		}
		
		
	}
	break;
}

 