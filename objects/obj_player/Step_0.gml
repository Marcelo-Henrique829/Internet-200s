#region inputs

var _esquerda = keyboard_check(ord("A"))
var _direita = keyboard_check(ord("D"))
var _jump = keyboard_check_direct(vk_space)

#endregion

var _chao = place_meeting(x,y+1,colisores)
var _move = _direita - _esquerda

hspd = spd*_move
vspd = grv + vspd

if(_jump and _chao)
{
	vspd-=13
}