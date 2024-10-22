/// @description Cria o elemento que cai na lateral

// Define a velocidade de movimento
velocidade = 1;
voltando = false;
// Define a direção para o guarda-chuva
var direcao_para_guarda_chuva = point_direction(x, y, obj_guarda_chuva.x, obj_guarda_chuva.y);
motion_set(direcao_para_guarda_chuva, velocidade); // Define a direção do movimento
