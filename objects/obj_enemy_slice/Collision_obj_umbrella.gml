/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.image_index == 0){
	instance_destroy()
	global.pontos += 3;
}
else{
	instance_destroy(other)
}
