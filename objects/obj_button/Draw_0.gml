/// @description Insert description here
// You can write your code in this editor
switch size
{
	case "big":
		sprite_index = spr_button_big_temp;
	break;
	case "medium":
		sprite_index = spr_button_medium_temp;
	break;
	case "small":
		sprite_index = spr_button_small_temp;
	break;
}

if clicked_on and l_mb
{
	image_index = 1;
}
else
{
	image_index = 0;
}
draw_self();
draw_set_font(pixel_font_44);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x-(image_index),y-(image_index),content);
