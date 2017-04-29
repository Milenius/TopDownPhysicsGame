/// @description Insert description here
// You can write your code in this editor

key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

x_movement = (key_left + key_right) *spd;
y_movement = (key_up + key_down) *spd;


phy_position_x += x_movement;
phy_position_y += y_movement;



direction = point_direction(x,y,mouse_x,mouse_y);
phy_rotation = -direction+90;
phy_fixed_rotation = true;

with own_shadow
{
	x = other.phy_position_x + global.shadows_x;
	y = other.phy_position_y + global.shadows_y;
	image_angle = -other.phy_rotation;
}