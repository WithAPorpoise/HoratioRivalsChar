//hit_player - called when one of your hitboxes hits a player

if ((!hit_player_obj.free || !free) && !(my_hitboxID.attack == AT_DSPECIAL 
|| my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_FSPECIAL
|| my_hitboxID.attack == AT_USPECIAL)){
    
    timing = true;
    if (!has_ground && combo_count < combo_max){
        combo_count++;
        combo_timer = 0;
    }
    if (!has_ground && combo_count == combo_max){
        sound_play(sound_get("mark"));
        has_ground = true;
        combo_count = 0;
        combo_timer = 0;
    }
}
