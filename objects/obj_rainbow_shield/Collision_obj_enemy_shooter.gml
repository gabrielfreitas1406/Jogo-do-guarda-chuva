/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

other.can_hurt_player = false;
global.pontos += 5;
audio_play_sound(snd_enemy_hurt, 0, 0);
other.sprite_index = spr_tempestade_death;
other.image_angle = 0;