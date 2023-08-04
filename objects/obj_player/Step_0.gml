#region controles
var _key_right = keyboard_check(ord("D")) //direita
var _key_left = keyboard_check(ord("A"))//esquerda
var _key_up = keyboard_check(ord("W"))//cima
var _key_down = keyboard_check(ord("S"))//baixo
var _fire = mouse_check_button_released(mb_left)//tiro
#endregion
#region movimentação
var _hmove = _key_right - _key_left
var _vmove = _key_down - _key_up

var _hspd = _hmove * spd;

var _vspd = _vmove * spd;

#endregion
#region tiro
//Criando o tiro

if (_fire){
	var _tiro =	instance_create_layer(x, y, "Tiros", obj_tiros);
	_tiro.speed = 10;
	_tiro.direction = point_direction(x, y, mouse_x, mouse_y);
}
#endregion
#region definir sprites

if (_hspd != 0)
{
	sprite_index = spr_player_hwalk;
	
}

else if (_vspd < 0)
{
	sprite_index = spr_player_upwalk;
}
else if (_vspd > 0)
{
	sprite_index = spr_player_downwalk;
}

else
{
	sprite_index = spr_player_idle; 
}

#endregion
#region colisão

if (_hspd != 0) image_xscale = sign(_hspd);


//colisão horizonal
if place_meeting(x+_hspd,y,obj_wall)
{
while(!place_meeting(x+sign(_hspd),y,obj_wall))
{
x = x + sign(_hspd)	
}
_hspd = 0;
}
x = x + _hspd;

//colisão vertical
if place_meeting(x,y+_vspd,obj_wall)
{
while(!place_meeting(x,y+sign(_vspd),obj_wall))
{
y = y + sign(_vspd)	
}
_vspd = 0;
}
y = y + _vspd;
#endregion
