if (instance_exists(obj_umbrella)) {
    if (follow != noone) {
        x_to = follow.x;
        y_to = follow.y;
    }

    // Suavização do movimento da câmera
    x += (x_to - x) / 10;
    y += (y_to - y) / 10;

    // Cálculo da posição da câmera com base na posição do jogador
    var half_cam_width = cam_width * 0.5;
    var half_cam_height = cam_height * 0.5;

    // Ajusta a posição da câmera para manter dentro dos limites da sala
    if (x < half_cam_width) {
        x = half_cam_width; // Mantém na borda esquerda
    } else if (x > room_width - half_cam_width) {
        x = room_width - half_cam_width; // Mantém na borda direita
    }

    if (y < half_cam_height) {
        y = half_cam_height; // Mantém na borda superior
    } else if (y > room_height - half_cam_height) {
        y = room_height - half_cam_height; // Mantém na borda inferior
    }

    // Define a posição da câmera
    camera_set_view_pos(view_camera[0], x - half_cam_width, y - half_cam_height);
}
