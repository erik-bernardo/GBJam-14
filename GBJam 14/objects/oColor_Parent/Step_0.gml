
if (global.ColorSelect == tag_color) {
    mask_index = -1; // Remove a colisão (torna o objeto intangível)
} else {
    mask_index = sprite_index; // Restaura a colisão original
}