/// @description Mpstra vidas e pontuação
draw_set_color(c_blue); 
draw_set_font(fnt_display);


draw_text(593, 20, string(obj_player_pvp1.pontos_pvp)); 

draw_set_color(c_red); 
draw_text(783, 20, string(obj_player_pvp2.pontos_pvp)); // Mostra o número de vidas 

