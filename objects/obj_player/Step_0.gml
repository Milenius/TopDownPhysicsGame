/// @description Insert description here
// You can write your code in this editor

if !draw_only
{
key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
r_button = keyboard_check(ord("R"));
l_mb = mouse_check_button_pressed(mb_left);

/*
x_movement = (key_left + key_right) *spd;
y_movement = (key_up + key_down) *spd;

phy_position_x += x_movement;
phy_position_y += y_movement;
*/

direction = point_direction(x,y,mouse_x,mouse_y);
phy_rotation = -direction+90;
phy_fixed_rotation = true;

if l_mb and clicks_left > 0
{
	physics_apply_impulse(x,y,lengthdir_x(impulse_force,direction),lengthdir_y(impulse_force,direction));
	clicks_left--;
}

if r_button
{
	room_restart();
}

if (abs(phy_position_xprevious - phy_position_x) < 5 and abs(phy_position_yprevious - phy_position_y) < 5) and clicks_left == 0 and alarm_triggered == false
{
	alarm[0] = room_speed*5;
	alarm_triggered = true;
}
}

phy_position_x += 100;

with own_shadow
{
	x = other.phy_position_x + global.shadows_x;
	y = other.phy_position_y + global.shadows_y;
	image_angle = -other.phy_rotation;
}