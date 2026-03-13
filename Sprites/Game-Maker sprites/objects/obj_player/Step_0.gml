// Left / Right movement
var move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
hsp = move * move_speed;

// Apply gravity
vsp += grav;


// Check if on ground
if (place_meeting(x, y + 1, obj_ground))
{
    on_ground = true;
}
else
{
    on_ground = false;
}


// Jump
if (on_ground && keyboard_check_pressed(vk_space))
{
    vsp = jump_speed;
}
// Horizontal collision
if (place_meeting(x + hsp, y, obj_ground))
{
    while (!place_meeting(x + sign(hsp), y, obj_ground))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;
// Vertical collision
if (place_meeting(x, y + vsp, obj_ground))
{
    while (!place_meeting(x, y + sign(vsp), obj_ground))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;