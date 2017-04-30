/// @description Insert description here
// You can write your code in this editor
l_mb = mouse_check_button(mb_left);

switch mode
{
	case "start":
		sprite_index = spr_button_start
		
		if l_mb
		{
			room_goto_next()
		}
		
		
		break;
	case "levels":
		sprite_index = spr_button_levels
		
		
		
		break;
	case "options":
		sprite_index = spr_button_options
		
		
		
		break;
	case "quit":
		sprite_index = spr_button_quit
		
		
		
		break;
}

if place_meeting(x,y,obj_mouse) and l_mb
{
	image_index = 1;
}
else
{
	image_index = 0;
}