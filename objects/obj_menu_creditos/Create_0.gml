/// @description Inicialização dos créditos

// Posição inicial para o texto começar fora da tela
credit_y = display_get_gui_height(); 

// Velocidade de subida dos créditos
credit_speed = 2; // Ajuste a velocidade conforme necessário

// Texto dos créditos
creditos = [
    "Desenvolvedores:",
    "Gabriel Freitas",
    "Gabriel Luciano",
    "Vinicius Fonseca",
	"Arte:",
    "Gabriel Luciano",
	"Sound Design:",
	"Gabriel Luciano"
];

line_height = 100; // Altura de cada linha (espaçamento entre os créditos)
