/// @description Insert description here
// You can write your code in this editor
if (global.life == 3){
	image_speed = 0.2667;
	heartFrame += image_speed;
	draw_sprite(spr_heart, heartFrame, 60, 60); 
}else if(global.life == 2){
	image_speed = 0.2;
	heartFrame += image_speed;
	draw_sprite(spr_heart2, heartFrame, 60, 60); 
}else if(global.life == 1){
	image_speed = 0.1333;
	heartFrame += image_speed;
	draw_sprite(spr_heart3, heartFrame, 60, 60); 
}