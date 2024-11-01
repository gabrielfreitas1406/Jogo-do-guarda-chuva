/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
other.powerup_sinuca = false;
other.powerup_velocidade = false;
other.powerup_rainbow = true;
other.sprite_index = spr_umbrella_rainbow;
audio_play_sound(snd_powerup, 0, 0)
instance_create_layer(x, y, "Shoot", obj_rainbow_shield);
instance_destroy();