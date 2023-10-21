// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function verifica_resolucao(){
		
		var _res = ini_read_string("display","resolution", string(window_get_width()) + "x" + string(window_get_height()));
	
	if (_res == "1920x1080"){
		window_set_fullscreen(true);
		window_set_size(1920,1080);
		selected = 2;
		image_index = 2;
	}else if(_res == "1280x720"){
		window_set_size(1280,720);
		selected = 1;
		image_index = 0;
	}else if(_res == "1366x768"){
		window_set_size(1366,768);
		window_set_fullscreen(false);
		selected = 0;
		image_index = 1;
	}
}