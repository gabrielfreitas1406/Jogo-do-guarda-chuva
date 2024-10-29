/// @description Mpstra vidas e pontuação
draw_set_color(c_red); 
draw_set_font(fnt_display);


draw_text(20, 20, "Vidas: " + string(global.lifes)); // Mostra o número de vidas 
draw_text(500, 20, "Pontos: " + string(global.pontos)); // Mostra a pontuaçãoo

