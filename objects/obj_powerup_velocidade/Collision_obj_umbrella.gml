/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
other.powerup_velocidade = true;
other.powerup_sinuca = false;
other.powerup_rainbow = false;
other.sprite_index = spr_umbrella_speed;
other.speed = 3.5
audio_play_sound(snd_powerup, 0, 0)
other.alarm[0] = 350;
instance_destroy();
