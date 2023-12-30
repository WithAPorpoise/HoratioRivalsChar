//update

if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_DAIR] = 0;
}
if(!free){
    recoveries = 0;
}
if(combo_count >=combo_max){
    has_ground = true;
    combo_count = 0;
}
if(current_score >=max_score){
    golden = true;
    score = 0;
}

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
    recoveries = 0;
    has_ground = true;
    }
}
