script_execute(get_input);
script_execute(move_state);
usa_arma();
#region tiro

if (key_drop){
	if (arma != noone){
	dropa_arma();
	}
}

#endregion
#region definir sprites


if (hspd != 0)
{
	sprite_index = spr_player_hwalk;
	image_xscale = sign(hspd);
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






