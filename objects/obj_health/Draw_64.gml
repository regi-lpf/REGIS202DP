/// @description Insert description here
// You can write your code in this editor
switch (global.life){

	case 3: image_speed = 0.2667 * 0.5;
	heartFrame += image_speed;
	draw_sprite(spr_heart, heartFrame, 60, 60); break;
	
	case 2: image_speed = 0.2 * 0.5;
	heartFrame += image_speed;
	draw_sprite(spr_heart2, heartFrame, 60, 60); break;
	
	case 1: image_speed = 0.1333 * 0.5;
	heartFrame += image_speed;
	draw_sprite(spr_heart3, heartFrame, 60, 60); break;
	
	default: break;

}