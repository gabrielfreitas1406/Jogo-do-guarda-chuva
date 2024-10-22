// Evento Step do obj_elemento

// Se o elemento está voltando após a colisão com o guarda-chuva
if (voltando) {
    // Movimento normal baseado na direção já definida (o ângulo foi ajustado na colisão)
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);

    // Verifica se o elemento colidiu com a lateral da tela
    if (x <= 0 || x >= room_width) {
        // Destrói o elemento quando ele atingir a lateral da tela
        instance_destroy();
    }
}
