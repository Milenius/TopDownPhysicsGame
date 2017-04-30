/// @description Insert description here
// You can write your code in this editor
l_mb = mouse_check_button_pressed(mb_left);
clicked_on = place_meeting(x,y,obj_mouse);
if clicked_on and l_mb
{
switch function
{
	case "start":
		room_goto(rm_1);
	break;
	case "levels":
		room_goto(rm_level_menu);
	break;
	case "options":
	
	break;
	case "quit":
		game_end();
	break;
	case "select":
		switch int64(content)
		{
			case 1: room_goto(rm_1) break;
			case 2: room_goto(rm_2) break;
			case 3: room_goto(rm_3) break;
			case 4: room_goto(rm_4) break;
			case 5: room_goto(rm_5) break;
			case 6: room_goto(rm_6) break;
			case 7: room_goto(rm_7) break;
			case 8: room_goto(rm_8) break;
			case 9: room_goto(rm_9) break;
			case 10: room_goto(rm_10) break;
		}
	break;
	case "back":
		room_goto_previous();
	break;
}
}
