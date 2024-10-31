// Fundo semi-transparente do menu
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(50, 100, 1300, 500, false); // área de fundo do menu
draw_set_alpha(1);

// Cabeçalho do menu
draw_set_font(fnt_display);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
draw_text(300, 120, "Opcoes do Jogo");

// Barra de volume estilizada
draw_set_color(c_gray);
draw_rectangle(slider_x, slider_y, slider_x + slider_width, slider_y + 20, false); // retângulo da barra
slider_handle_x = slider_x + slider_width * global.volume;
draw_set_color(c_yellow);
draw_circle(slider_handle_x, slider_y + 10, 8, false); // pino da barra

// Indicador de valor do volume
draw_set_color(c_orange);
draw_text(300, 240, "Volume: " + string(floor(global.volume * 100)) + "%");


// Instruções de controle
draw_text(636.5, 350, "Setas direita e esquerda para ajustar o volume"); 
draw_text(487, 410, "Espaço volta para o menu principal");


// Modo Noturno - Alternador
draw_text(636.5, 470, "Modo Noturno: " + (global.night_mode ? "Ativado" : "Desativado"));
draw_text(487, 530, "Pressione Enter para alternar o modo");
