/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

with(other){
	if(abatido == false){
		can_hurt_player = false;
		abatido = true;
		audio_play_sound(snd_enemy_hurt, 0, 0)
		global.pontos += 3;
		sprite_index = spr_ufo_death;
		rotacao = 1
		speed = 2;
		alarm[0] = 30;
	}
}