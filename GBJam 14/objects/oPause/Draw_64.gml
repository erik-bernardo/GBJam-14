var gui_w = display_get_width()
var gui_h = display_get_height()

if global.pause {
	draw_set_alpha(0.75);
	draw_set_color(c_black);
	draw_rectangle(0,0,gui_w,gui_h,false);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_set_font(fmenu_inicial);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	for (var i = 0; i < op_length; i++)
		{
		var _c = c_white;
		if pos == i  {_c = c_yellow};

		draw_text_color(x+op_border, y+op_border + op_space * i, option[menu_level,i],_c ,_c , _c,_c ,1);
		}

	
}