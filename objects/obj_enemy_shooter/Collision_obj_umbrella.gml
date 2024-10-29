/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.image_index == 1){
	instance_destroy()
	global.pontos += 5;
}
else{
	instance_destroy(other)
}
