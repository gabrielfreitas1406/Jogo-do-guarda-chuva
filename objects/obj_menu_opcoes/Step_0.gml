if (keyboard_check_pressed(vk_right)) {
    global.volume += 0.1;
    if (global.volume > 1) {
        global.volume = 1; // Limite máximo de 100%
    }
    audio_master_gain(global.volume);
}

if (keyboard_check_pressed(vk_left)) {
    global.volume -= 0.1;
    if (global.volume < 0) {
        global.volume = 0; // Limite mínimo de 0%
    }
    audio_master_gain(global.volume);
}

// Verifica se a tecla 'Esc' foi pressionada para voltar ao menu principal
if (keyboard_check_pressed(vk_space)) {
  
    room_goto(RoomMenu);
}
