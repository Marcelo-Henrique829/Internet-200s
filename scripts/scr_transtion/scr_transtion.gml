// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.destine = 0

global.sq_out = 0;

function scr_transtion(){
	
	room_goto(global.destine)
	global.destine = noone
	

}

function scr_sequence_destroy() {
    var _sq = global.sq_out;
    layer_sequence_destroy(_sq);
}