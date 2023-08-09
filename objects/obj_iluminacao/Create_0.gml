/// @description Insert description here
// You can write your code in this editor
sombra_surface = surface_create(room_width, room_height);

luz = function(_obj, _radius){
	if instance_exists(_obj){
		var _num = instance_number(_obj);
		
		for (var i = 0; i < _num; i++){
			var _inst = instance_find(_obj, i);		
			
			draw_circle(_inst.x, _inst.y, _radius + random(1.5), false);
		}
	}
}