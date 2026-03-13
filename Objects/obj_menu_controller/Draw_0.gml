draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draws the title.
draw_set_color(c_white);
draw_text(room_width / 2, 100, title_text);

// Draws the buttons.
for (var i = 0; i < array_length(menu_options); i++) {
    var _y = 300 + (i * 100);
    
    var _color = c_white; 
    
    // Checks for if the mouse is hovering to change the color and to handle clicks.
    if (point_in_rectangle(mouse_x, mouse_y, (room_width/2) - 100, _y - 20, (room_width/2) + 100, _y + 20)) {
        _color = c_yellow; // Change to yellow only if hovering
        
        if (mouse_check_button_pressed(mb_left)) {
            if (i == 0) room_goto(player_select_screen); // Play
            if (i == 1) game_end();        // Quit
        }
    }
    draw_text_transformed_color(room_width / 2, _y, menu_options[i], 1.5, 1.5, 0, _color, _color, _color, _color, 1);
}