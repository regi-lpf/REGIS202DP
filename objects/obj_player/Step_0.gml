audio_play_sound(snd_ambiente, 0, true, -0.5);

#region controles
var _key_right = keyboard_check(ord("D")); //direita
var _key_left = keyboard_check(ord("A"));//esquerda
var _key_up = keyboard_check(ord("W"));//cima
var _key_down = keyboard_check(ord("S"));//baixo
var _key_drop = keyboard_check(ord("Q"));//dropar
var _key_fullscreen = keyboard_check(ord("F"));//toggle fullscreen
#endregion
#region movimentação
var _hmove = _key_right - _key_left;
var _vmove = _key_down - _key_up;

hspd = _hmove * spd;

vspd = _vmove * spd;

#endregion
#region tiro

if (_key_drop){
	if (arma != noone){
	dropa_arma();
	}
}

if (_key_fullscreen){
	tela_cheia();	
}

#endregion
#region definir sprites

//Girar player na direção do mouse


if (hspd != 0)
{
	sprite_index = spr_player_hwalk;
	
}

else if (vspd < 0)
{
	sprite_index = spr_player_upwalk;
}
else if (vspd > 0)
{
	sprite_index = spr_player_downwalk;
}

else
{
	sprite_index = spr_player_idle; 
}

#endregion
#region colisão

if (hspd != 0) image_xscale = sign(hspd);


//colisão horizonal
if place_meeting(x+hspd,y,obj_wall)
{
while(!place_meeting(x+sign(hspd),y,obj_wall))
{
x = x + sign(hspd)	
}
hspd = 0;
}
x = x + hspd;

//colisão vertical
if place_meeting(x,y+vspd,obj_wall)
{
while(!place_meeting(x,y+sign(vspd),obj_wall))
{
y = y + sign(vspd)	
}
vspd = 0;
}
y = y + vspd;

usa_arma();
#endregion