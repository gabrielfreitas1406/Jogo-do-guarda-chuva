// Aumenta o volume ao pressionar a tecla de espaço
if (keyboard_check_pressed(vk_space)) {
    // Aumenta o volume em 10%
    global.volume += 0.1;

    // Se o volume ultrapassar 100%, redefine para 0%
    if (global.volume > 1) {
        global.volume = 0;
    }

    // Aplica o volume global
    audio_master_gain(global.volume);
}
