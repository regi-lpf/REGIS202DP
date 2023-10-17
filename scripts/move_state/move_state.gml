// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_state(){
	script_execute(get_input);
	
	xaxis =  key_right - key_left;
	yaxis = key_down - key_up;
	
	var dir = point_direction(0, 0, xaxis, yaxis);
	
	if (xaxis == 0 and yaxis == 0){
	len = 0;
	}else{
	len = spd;
	}
	
	hspd = lengthdir_x(len, dir);
	vspd = lengthdir_y(len, dir);
	
	#region Collision
	// HOrizontal
	if (place_meeting(x+hspd, y, obj_wall)){
		while (!place_meeting(x+hspd, y, obj_wall)){
		x += sign(hspd);
		}
	hspd = 0;	
	}
	x += hspd;
	//Vertical
	if (place_meeting(x, y+vspd, obj_wall)){
		while (!place_meeting(x, y+vspd, obj_wall)){
		y += sign(vspd);
		}
	vspd = 0;	
	}
	y += vspd;
	#endregion
}