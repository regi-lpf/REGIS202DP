#region controles
key_right = keyboard_check(ord("D")) //direita
key_left = keyboard_check(ord("A"))//esquerda
key_up = keyboard_check(ord("W"))//cima
key_down = keyboard_check(ord("S"))//baixo
#endregion

#region movimentação
var hmove = key_right - key_left
var vmove = key_down - key_up

hspd = hmove * spd;

vspd = vmove * spd;


#region definir sprites

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
#endregion
