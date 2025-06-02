      // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//inputs
global.inputs = {
	
	//teclas pressionadas
	left_p:false,	
	right_p:false,	
	
	left:false,	
	right:false,
	jump:false,
	interact:false,
	up:false,
	down:false,
	run:false,
	attack:false
}
	
 player_cord = {

	x:false,
	y:false
}


function scr_inputs(_bool)
{
	if(!_bool) return;
	
	var _i = global.inputs
	
	_i.left = keyboard_check(ord("A")) or keyboard_check(vk_left)
	_i.right = keyboard_check(ord("D")) or keyboard_check(vk_right)
	_i.jump = keyboard_check_pressed(vk_space)
	_i.interact = keyboard_check_pressed(vk_enter)
	_i.up = keyboard_check(ord("W")) or  keyboard_check(vk_up)
	_i.down = keyboard_check(ord("W")) or keyboard_check(vk_down)
	_i.run = keyboard_check(vk_lshift)
	_i.attack = keyboard_check(ord("J"))


	
	
	_i.left_p = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)
	_i.right_p = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)
	

}


