/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.image_index == 1){
	can_hurt_player = false;
	global.pontos += 5;
	audio_play_sound(snd_enemy_hurt, 0, 0);
	sprite_index = spr_tempestade_death;
	image_angle = 0;
}
else if (can_hurt_player){
	can_hurt_player = false;
	global.lifes -= 1;
}
