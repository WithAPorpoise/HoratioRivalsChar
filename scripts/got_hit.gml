//got_hit - called when you're hit by a hitbox

if (enemy_hitboxID.type == 1 && hit_player_obj.free){
    hit_player_obj.has_ground = false;
    hit_player_obj.timing = false;
    hit_player_obj.combo_count = 0;
    hit_player_obj.combo_timer = 0;
}