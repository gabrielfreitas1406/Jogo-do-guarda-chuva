// Description Muda sprite e o movimento do guarda chuva

if (balancando){
	// Balança o guarda-chuva
    angulo += velocidade_balanco * direcao; // Aumenta o ângulo na direção atual
    
    // Inverte a direção quando atingir o ângulo limite
    if (angulo > angulo_max || angulo < -angulo_max) {
        direcao *= -1;
    }
    
    // Aplica a rotação ao guarda-chuva
    image_angle = angulo;
}

//verifica se o espaço foi pressionado
if (keyboard_check(vk_space)) {
	aberto = true;
	balancando = false;
    sprite_index = s_guarda_chuva_aberto; // Muda o sprite para o de tecla pressionada
} else {
	aberto = false;
	balancando = true;
    sprite_index = s_guarda_chuva_fechado; // Volta ao sprite normal quando a tecla é solta
}

