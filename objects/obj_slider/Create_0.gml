/// @description Insert description here
// You can write your code in this editor
global.volume = 1;
global.current_volume = global.volume;

valor = 1;

desenha_slider = function(){
	draw_self();
	
	var _marcadorx = x + (sprite_width * valor);
	
	draw_sprite_ext(spr_marcador, 0, _marcadorx, y, 1, 1, 0, c_white, 1);
}

altera_valor = function(){
	ini_open("settings.ini");
	
	valor = ini_read_real("sound", "volume", global.volume);
	
	var _marcadorx = x + (sprite_width * valor);
	var _marcadory = y;
	var _margem = 10;
	
	var _mouse_sobre = point_in_rectangle(mouse_x, mouse_y, bbox_left -  _margem, bbox_top - _margem, bbox_right + _margem, bbox_bottom + _margem);
	var _mouse_click = mouse_check_button(mb_left);
	
	if (_mouse_sobre){
		draw_sprite_ext(spr_marcador, 0, _marcadorx, y, 1.25, 1.25, 0, c_white, 1);
		
		if (_mouse_click){
			valor = (mouse_x - x)/sprite_width;
			valor = clamp(valor, 0, 1);
			global.volume = valor * 10;
		}
	}else{
		image_blend = c_white;
	}

	ini_write_real("sound","volume", valor);
	
	ini_close();
}

