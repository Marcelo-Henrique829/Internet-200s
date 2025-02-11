 #region inputs

var _esquerda = keyboard_check(ord("A")) or gamepad_axis_value(global.gamepad_id,gp_axislh) < - 0.25
var _direita = keyboard_check(ord("D")) or gamepad_axis_value(global.gamepad_id,gp_axislh) >  0.25
var _jump = keyboard_check(vk_space) or gamepad_button_check_pressed(global.gamepad_id,gp_face1)
var _fast = keyboard_check(vk_shift) or gamepad_button_check(global.gamepad_id,gp_face3)

#endregion

var _chao = place_meeting(x,y+1,colisores)
var _move = _direita - _esquerda
var _hit = place_meeting(x,y,inimigo)


if(hspd!=0) //este código faz a sprite do player virar para esquerda e para direita
{
	image_xscale = sign(hspd)
}


if(_fast and _move!=0) //para o player correr
{
	spd = spd_max

}
else
{
	spd = def_spd;
	
}

if(vspd>=22) altura_certa = 1;
	

coyte() //a função que roda o código do efeito coyote

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
			if(_fast)
			{
				sprite_index = spr_gotta_go_fast02

			}
		}

		
		
		
		if(coyte_time  and _jump)
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
		
	
		if(_chao and altura_certa)
		{
			instance_create_layer(x,y+sprite_height,layer,obj_smoke_jump_effect)
			altura_certa = 0;
			Obj_tremetala.treme = 20;

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
		
		if(_chao and altura_certa)
		{
			instance_create_layer(x,y+sprite_height-30,layer,obj_smoke_jump_effect)
			altura_certa = 0;
			Obj_tremetala.treme = 20;

		}
		
		
		
		if(!_chao and place_meeting(x+sign(hspd),y,obj_grude))
		{
			state = "pendurado"
		}

		
	}
	break;
	
	
	case "hit":
	{
		
		morte = 1
		Obj_tremetala.treme = 50;
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
			global.score = 0;
			room_restart()
		}
	}
	break;
	
	case "apear":
	{
		hspd = 0;
		
		sprite_index = spr_stickman_apear
		if(scr_end_animation(spr_stickman_apear))
		{
			state = "iddle"
		}
		
		
	}
	break;
	
	
	case"pre_trampolin":
	{
		state = "trampolin"
	}
	break;
	
	case "trampolin":
	{
		trampolin_time--;
		
		hspd = lengthdir_x(trampolin.force,trampolin.image_angle);
		vspd = lengthdir_y(trampolin.force,trampolin.image_angle);
		
		if(_hit) state = "hit";
		
		if(trampolin_time<=0)
		{
			state = "iddle";
			trampolin_time = trampolin_def_time;
		}
		
	}
	break;
	
}


if(morte)
{
	state = "morte"
}
show_debug_message(altura_certa)




 