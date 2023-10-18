/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 1;
selected = 0;

verifica_resolucao = function(){
	var _res = string(window_get_width()) + "x" + string(window_get_height());
	
	if (_res == "1920x1080"){
		selected = 2;
		image_index = 2;
	}else if(_res == "1280x720"){
		selected = 1;
		image_index = 0;
	}else if(_res == "1366x768"){
		selected = 0;
		image_index = 1;
	}
}
