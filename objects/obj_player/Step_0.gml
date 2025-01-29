 #region inputs

var _esquerda = keyboard_check(ord("A"))
var _direita = keyboard_check(ord("D"))
var _jump = keyboard_check_pressed (vk_space)

#endregion

var _chao = place_meeting(x,y+1,colisores)
var _move = _direita - _esquerda


var _hit = place_meeting(x,y,inimigo)

if(hspd!=0)
{
	image_xscale = sign(hspd)
}



switch(state)
{
	case "iddle":
	{
		sprite_index = spr_stickman_iddle
		
		hspd = spd*_move
		vspd = grv + vspd
		
 		if(hspd!=0)
		{
			sprite_index = spr_stickman_run
		}

		
		if(_chao and _jump)
		{
			vspd -= jump_force
			
			state = "jump"
		}
		
		if(_hit)
		{
			state = "hit"
		}
		
		if(!_chao and place_meeting(x+sign(hspd),y,obj_grude))
		{
			state = "pendurado"
		}
	
	}
	break;
	
	case "jump":
	{
		sprite_index = spr_stickman_jump
		hspd = spd*_move
		vspd = grv + vspd
		
		if(scr_end_animation(spr_stickman_jump) or _chao)
		{
			state = "iddle"
		}
		
		if(_hit)
		{
			state = "hit"
		}
		
		
		if(!_chao and place_meeting(x+sign(hspd),y,obj_grude))
		{
			state = "pendurado"
		}
		
	}
	break;
	
	
	case "hit":
	{
		Obj_tremetala.treme = 20;
		hit_time--
		sprite_index = spr_stickman_hit
		hspd = lengthdir_x(hit_strong,global.hit_dirh)
		vspd = lengthdir_y(hit_strong,global.hit_dirv)
		if(hit_time<=0)
		{
			state = "morte"
			hit_time = hit_cooldown
		}
		
	}
	break;
	
	case "pendurado":
	{
	
				
			vspd = 0;
			sprite_index = spr_stickman_pendurado
			if(_jump)
			{
					vspd -= jump_force
					hspd = _move * spd
					state = "jump"
					
			}
			
			if(_hit)
			{
				state  = "hit"
			}
	
	}
	break;
	
	
	case "morte":
	{
		sprite_index = spr_stickman_destroy
		
		if(image_index>=image_number-1)
		{
			room_restart()
		}
	}
	break;
	
}

show_debug_message(state)

 