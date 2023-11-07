//css_draw

//must change the offset here because load.gml isn't called on the character select screen
sprite_change_offset("ghost_icon", 25, 22);

if (get_player_color(player) == 6)
	draw_sprite_ext(sprite_get("ghost_icon"), 0, x+178, y+144, 2, 2, 0, c_white, 1);