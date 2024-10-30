/// @description Movimentação dos créditos

// Faz os créditos subirem
credit_y -= credit_speed;

// Verifica se todos os créditos já saíram da tela
var end_position = credit_y + (array_length(creditos) * line_height);

if (end_position < 0 or keyboard_check_pressed(vk_space)) {
    // Se os créditos passaram completamente, volta para a tela principal
    room_goto(RoomMenu); // Substitua pelo nome da sala do menu principal
}
