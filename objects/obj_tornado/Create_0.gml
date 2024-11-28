/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(instance_exists(obj_umbrella)){
	direction = point_direction(x, y, obj_umbrella.x, obj_umbrella.y)
	speed = 0.5;
}

touched = false; //variável de controle para execução única de um trecho
hit = false; //Indica se foi atingido pelo jogador
hit_sinuca = false; //Indica se foi atingido pelo jogador no modo sinuca

px = 0;
py = 0;


can_hurt_player = true;

function death(){
	sprite_index = spr_tornado_death;
}

