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