//death.gml

with (asset_get("obj_article1")){
    if (player_id == other.id && state == 1){
        state = 2;
        state_timer = 0;
    }
}


combo_count = 0;
combo_timer = 0;
timing = false;
has_ground = false;
steelman = false;
strawman = false;
golden = false;
loops = 0;