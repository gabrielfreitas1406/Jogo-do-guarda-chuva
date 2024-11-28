/// @description Mpstra vidas e pontuação

if(global.lifes >= 3){
	draw_sprite_ext(spr_health, 0, 100, 80, 4, 4, 0, c_white, 1);
	draw_sprite_ext(spr_health, 0, 200, 80, 4, 4, 0, c_white, 1);
	draw_sprite_ext(spr_health, 0, 300, 80, 4, 4, 0, c_white, 1);
}
else if(global.lifes == 2){
	draw_sprite_ext(spr_health, 0, 100, 80, 4, 4, 0, c_white, 1);
	draw_sprite_ext(spr_health, 0, 200, 80, 4, 4, 0, c_white, 1);
	draw_sprite_ext(spr_health, 0, 300, 80, 4, 4, 0, c_black, 1);
}
else if(global.lifes == 1){
	draw_sprite_ext(spr_health, 0, 100, 80, 4, 4, 0, c_white, 1);
	draw_sprite_ext(spr_health, 0, 200, 80, 4, 4, 0, c_black, 1);
	draw_sprite_ext(spr_health, 0, 300, 80, 4, 4, 0, c_black, 1);
}
else if(global.lifes <= 0){
	draw_sprite_ext(spr_health, 0, 100, 80, 3, 3, 0, c_black, 1);
	draw_sprite_ext(spr_health, 0, 200, 80, 3, 3, 0, c_black, 1);
	draw_sprite_ext(spr_health, 0, 300, 80, 3, 3, 0, c_black, 1);
}


draw_set_color(c_black); 
draw_set_font(fnt_display);

//draw_text(100, 20, "Vidas: " + string(global.lifes)); // Mostra o número de vidas 
draw_text(500, 30, "Pontos: " + string(global.pontos)); // Mostra a pontuaçãoo

