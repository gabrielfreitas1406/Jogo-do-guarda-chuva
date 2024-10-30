// Variável para armazenar o volume (inicialmente 50%)
global.volume = 0.5;

// Posição da barra deslizante
slider_x = 100;      // Posição X da barra
slider_y = 150;      // Posição Y da barra
slider_width = 200;  // Largura da barra
slider_handle_x = slider_x + slider_width * global.volume; // Posição do "pino" da barra
