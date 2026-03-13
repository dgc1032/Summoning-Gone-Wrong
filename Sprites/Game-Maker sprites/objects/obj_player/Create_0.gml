switch(global.character)
{
    case 1:
        sprite_index = spr_player1;
    break;

    case 2:
        sprite_index = spr_player2;
    break;

    case 3:
        sprite_index = spr_player3;
    break;
}

// Movement
move_speed = 4;
jump_speed = -10;

// Physics
hsp = 0;
vsp = 0;
grav = 0.5;

// Jump control
on_ground = false;