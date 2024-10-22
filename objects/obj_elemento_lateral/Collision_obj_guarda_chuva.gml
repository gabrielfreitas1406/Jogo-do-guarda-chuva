/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Evento de colisão entre o elemento e o guarda-chuva (obj_guarda_chuva)
if (obj_guarda_chuva.aberto) {
    // Se o guarda-chuva estiver aberto, inverte a direção do elemento baseado no ângulo do guarda-chuva
    
    // Calcula o novo ângulo de movimento (ângulo do guarda-chuva + 180 graus para inverter)
    direction = obj_guarda_chuva.image_angle + 180; 

    // Mantém a velocidade atual, mas muda a direção
    speed = 1; // Ajuste a velocidade de retorno como preferir

    // Após colidir, o elemento começará a se mover de volta
    voltando = true;
}
