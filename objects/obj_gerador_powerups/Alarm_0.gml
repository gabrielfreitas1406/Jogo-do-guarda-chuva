/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _powerup_random = irandom_range(0,10)

// Define a posição aleatória dentro dos limites da sala
var spawn_x = irandom(room_width);
var spawn_y = irandom(room_height);

// Cria o objeto de vida na posição aleatória


if(_powerup_random <= 4){
	instance_create_layer(spawn_x, spawn_y, "Obstacles", obj_health); 
}
else if (_powerup_random <= 6)
	instance_create_layer(spawn_x, spawn_y, "Obstacles", obj_powerup_velocidade);
else{
	instance_create_layer(spawn_x, spawn_y, "Obstacles", obj_powerup_sinuca); 
}
// Reinicia o temporizador
alarm[0] = spawn_interval;
