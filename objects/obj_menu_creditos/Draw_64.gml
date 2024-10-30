/// @description Desenhar os créditos subindo

draw_set_font(fnt_display);  // Define a fonte desejada
draw_set_halign(fa_center); // Alinha o texto ao centro
draw_set_color(c_blue); // Define a cor do texto como amarelo

// Desenha cada linha dos créditos com base na posição atual
for (var i = 0; i < array_length(creditos); i++) {
    var y_position = credit_y + (i * line_height);  // Calcula a posição Y para cada linha
    draw_text(display_get_gui_width() / 2, y_position, creditos[i]);  // Desenha o texto centralizado
}
