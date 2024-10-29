/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Define a posição aleatória dentro dos limites da sala
var spawn_x = irandom(room_width);
var spawn_y = irandom(room_height);

// Cria o objeto de vida na posição aleatória
instance_create_layer(spawn_x, spawn_y, "Obstacles", obj_health); 

// Reinicia o temporizador
alarm[0] = spawn_interval;
