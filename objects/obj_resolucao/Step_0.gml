/// @description Insert description here
// You can write your code in this editor
verifica_resolucao();

var _mouse_sobre = point_in_rectangle(mouse_x, mouse_y, bbox_left , bbox_top , bbox_right, bbox_bottom);
var _mouse_click = mouse_check_button_released(mb_left);

if ((_mouse_sobre and _mouse_click) and selected == 1){
	window_set_fullscreen(true);
	window_set_size(1920,1080);
}else if ((_mouse_sobre and _mouse_click) and selected == 0){
	window_set_size(1280,720);
}else if ((_mouse_sobre and _mouse_click) and selected == 2){
	window_set_fullscreen(false);
	window_set_size(1366,768);
	
}
