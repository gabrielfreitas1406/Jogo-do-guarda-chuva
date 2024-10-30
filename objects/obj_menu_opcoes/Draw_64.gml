// Define a fonte desejada
draw_set_font(fnt_display);
draw_set_halign(fa_center); // Alinha o texto ao centro
draw_set_color(c_blue);

// Título do menu
draw_text(300, 50, "Controle de Volume");

// Desenhar a barra deslizante
draw_rectangle(slider_x, slider_y, slider_x + slider_width, slider_y + 10, false); // Retângulo da barra

// Calcular a posição do pino da barra com base no volume
slider_handle_x = slider_x + slider_width * global.volume; // Posição do "pino" da barra

// Definir a cor do pino
draw_set_color(c_yellow); // Altere 'c_red' para a cor desejada
draw_circle(slider_handle_x, slider_y + 5, 5, false); // Pino da barra

// Mostrar o valor do volume em texto
draw_set_color(c_blue); // Voltar a cor do texto para azul
draw_text(300, 200, "Volume: " + string(floor(global.volume * 100)) + "%");
