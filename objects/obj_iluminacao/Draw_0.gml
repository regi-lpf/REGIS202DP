/// @description Insert description here
// You can write your code in this editor
if surface_exists(sombra_surface){
	//Setando a camada
	surface_set_target(sombra_surface);
	
	//Desenhando retangulo preto
	draw_set_color(c_black);
	draw_set_alpha(0.95);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	
	draw_set_color(c_white);	
	
	gpu_set_blendmode(bm_subtract);
	draw_circle(obj_player.x, obj_player.y, 20 + random(1.5), false);
	luz(obj_lanterna, 32);
	luz(obj_tiro_luz, 32);
	
	draw_set_alpha(0.5);
	draw_circle(obj_player.x, obj_player.y, 32 + random(1.5), false);
	luz(obj_lanterna, 44);
	luz(obj_tiro_luz, 44);
	
	
	draw_set_alpha(0.95);
	gpu_set_blendmode(bm_normal);

	surface_reset_target();
}else{
	//Recriando a camada
	sombra_surface = surface_create(room_width, room_height);

}

draw_surface(sombra_surface, 0, 0);

