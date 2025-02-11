function scr_colision(_objetos = []){
	
	var _hspd = sign(hspd)
	var _vspd = sign(vspd)
	
	
	
	repeat(abs(hspd))
	{
		if(place_meeting(x+_hspd,y,_objetos))
		{
			hspd = 0
		}
		else
		{
			x+=_hspd
		}
	}
	repeat(abs(vspd))
	{
		if(place_meeting(x,y+_vspd,_objetos))
		{
			vspd = 0
		}
		else
		{
			y+=_vspd
		}
	}

}
	
	
function scr_end_animation(_sprite)
{
	if(sprite_index == _sprite)
	{
		if(image_index>= image_number-1)
		{
			return 1
		}
		else
		{
			return 0
		}
	}
}

global.hit_dirh = 0;
global.hit_dirv = 0;
global.pendurado = 0
global.score = 0;

function scr_pou(_obj)
{
	if(obj_player.x>= _obj.x)
	{
		global.hit_dirh = 0;
		
	}
	else
	{
		global.hit_dirh = 180
	}
	
	if(obj_player.y>= _obj.y)
	{
		global.hit_dirv = 270
	}
	else
	{
		global.hit_dirv = 90
	}
	
	
}



function scr_pou_2()
{
	if(obj_player.x>= obj_parede.x)
	{
		global.pendurado = 180
		
	}
	else
	{
		global.pendurado = 0;
	}
	

}