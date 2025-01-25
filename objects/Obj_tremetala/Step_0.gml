/// @description Insert description here
// You can write your code in this editor

//efeito de treme.

if treme > 0
{
	var  _x = random_range(-treme, treme);
	var  _y = random_range(-treme, treme);
	
  view_set_xport(view_current,_x);
  view_set_yport(view_current,_y);


}
else
{
  treme = 0;
  
  view_set_xport(view_current, 0);
  view_set_yport(view_current, 0);

}

treme = lerp(treme, 0 , .1);