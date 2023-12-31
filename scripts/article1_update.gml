//article1_update

if(myplayer == noone) myplayer = asset_get("oPlayer");
if (init == 0){
    init = 1;
    myplayer.goal_obj = id;
    
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }
}

golden = player_id.golden;
//current_score = player_id.current_score;
//max_score = player_id.max_score;
state_timer++;

var grow_time = 16;
if (state == 0){ //growing
    image_index = (golden*12)+ state_timer * 4 / grow_time;
    if (state_timer == floor(grow_time*.25)){
        create_hitbox(AT_DSPECIAL, 1, x, y-40);
    }
    if (state_timer == floor(grow_time*.5)){
        create_hitbox(AT_DSPECIAL, 2, x, y-100);
    }
    if (state_timer == grow_time){
        state = 1;
        state_timer = 0;
    }
}
/*
if (state == 24){ //IDLE
    image_index = 4 + (2*floor(state_timer / sway_time));
    if (state_timer >= sway_time){
        state_timer = 0;
    }
}
*/
if (free) state = 4;
else if (abs(hsp)>0) {
    hsp -= .25*(hsp/abs(hsp));
    
    
    if((state_timer % 4 )==0){
        create_hitbox(AT_DSPECIAL, 1, x-(20*player_id.spr_dir), y-20);
        spawn_hit_fx(x,y-20, player_id.small_wood_hfx);
    }
    
}
//Remove the whip tip by forcing it to time out after hittting the goalpost
with (asset_get("pHitBox")){
    if(player_id == other.player_id && player_id.tip!=noone && place_meeting(x,y,player_id.goal_obj)) {
        hitbox_timer=length;
    }
}
if (state == 1){
    image_index = 4+ (golden*12);
    with(asset_get("pHitBox")){
        if(other.player_id == player_id && attack == AT_USPECIAL && hbox_num == 1 && place_meeting(x,y,player_id.goal_obj)){
            if(player_id.current_score < player_id.max_score){
                player_id.current_score++;
            }
            spawn_hit_fx(x, y, player_id.small_leaf_hfx);
            sound_play(asset_get("sfx_leafy_hit1"));
            hitbox_timer = length;
        }
    }
    with (asset_get("plasma_field_obj")){
        with (other.id){
            if (get_player_team(get_instance_player(other)) != get_player_team(player)){
                if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                    state = 4;
                    state_timer = 0;
                }
            }
        }
    }
    
    var sway_time = 100;
    if(state == 1){ //if still IDLE
        if (state_timer <= sway_time)
        image_index = (golden*12)+ 3+round(2*(state_timer/sway_time))
        else if (state_timer >= sway_time)
        image_index = (golden*12)+ 4;
        if (state_timer == 1.5*sway_time)
            state_timer = 0;
    }
}

var die_time = 10;
if (state == 2){
    image_index = (golden*12)+ 5 + state_timer * 4 / die_time;
    if (state_timer >= die_time){
        instance_destroy();
        exit;
    }
}

if (state == 3){
    if (state_timer == 1){
        var ball = create_hitbox(AT_USPECIAL, 1, x, y-32);
        ball.hsp = 0;
        if (player_id.left_down) ball.hsp -= 3;
        if (player_id.right_down) ball.hsp += 3;
        ball.vsp = -10;
    }
    image_index = (golden*12)+ 9 + state_timer * 4 / break_time;
    if (state_timer == break_time){
        instance_destroy();
        exit;
    }
}
var break_time = 16;
if (state == 4){
    image_index = (golden*12)+ 9 + state_timer * 4 / break_time;
    if (state_timer > break_time*4){
        instance_destroy();
        exit;
    }
}

var wiggle_time = 15;
if (state == 5){
    image_index =(golden*12)+ 13 + state_timer * 5 / wiggle_time;
    if (state_timer == wiggle_time){
        state = 1;
        state_timer = 0;
        image_index =(golden*12)+ 4;
    }
}
var this_player = asset_get("oPlayer");
if(this_player.player == player_id){
    if(this_player.goal_obj != noone){
        draw_debug_text(this_player.x,this_player.y,string(this_player.goal_obj));
    }
}


 