//init_shader - changing the local color profiles

if (get_player_color(player) == 6){
	for (var slot_num = 0; slot_num < 3; slot_num++){
		// reset the color to default
		var temp_r = get_color_profile_slot_r(6, slot_num);
		var temp_g = get_color_profile_slot_g(6, slot_num);
		var temp_b = get_color_profile_slot_b(6, slot_num);
		set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .7);
		set_article_color_slot(slot_num, temp_r, temp_g, temp_b, .7);
		set_character_color_shading(slot_num, 0);
	}
}