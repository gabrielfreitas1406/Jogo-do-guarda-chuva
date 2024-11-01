/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.can_hurt_player and not other.abatido){
	other.abatido = true;
	other.can_hurt_player = false;
	global.pontos += 5;
	other.sprite_index = spr_tempestade_death;
	other.image_angle = 0;
	
}