/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_text(70,70,"Clicks left: "+string(clicks_left));
if alarm_triggered
{
	draw_set_color(c_red);
	draw_text(70,90,"Seconds left: "+string(alarm[0]/room_speed));
}