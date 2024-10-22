/// @description Cria os elementos que caem

// Função para calcular a distância até o guarda-chuva
function elemento_proximo_ao_guarda_chuva(){
    // Itera sobre todos os elementos na sala
    var elementos = instance_find(obj_elemento_lateral, -1); // Buscar todos os elementos laterais
    
    // Verifica a distância do guarda-chuva para todos os elementos
    while (elementos != noone) {
        var dist = point_distance(elementos.x, elementos.y, obj_guarda_chuva.x, obj_guarda_chuva.y);
        
        // Se o elemento estiver muito próximo, retorna verdadeiro
        if (dist < distancia_minima) {
            return true;
        }
        elementos = instance_find(obj_elemento_lateral, elementos.id + 1);
    }
    return false;
}

var escolha = irandom(1); // Escolhe aleatoriamente entre 0 (topo) e 1 (laterais)

if (escolha == 0) {
    // Gera um elemento no topo
    var pos_x = random(room_width); // Posição aleatória no eixo X
    instance_create_depth(pos_x, -50, 0, obj_elemento_topo); // Cria o elemento fora da tela (acima)
} else {
    // Gera um elemento na lateral, mas verifica antes se não há outros muito próximos ao guarda-chuva
    if (!elemento_proximo_ao_guarda_chuva()) {
        var lateral = choose(0, room_width); // Escolhe se vai sair pela esquerda ou direita
        var pos_y = random(room_height * 0.75); // Garante que o elemento não saia muito embaixo
        instance_create_depth(lateral, pos_y, 0, obj_elemento_lateral); // Cria o elemento na lateral
    }
}

// Reinicia o alarme para criar o próximo elemento
alarm[0] = room_speed;
