//article1_update

if(myplayer == noone) myplayer = asset_get("oPlayer");
if (init == 0){
    init = 1;
    golden = myplayer.golden;
    myplayer.goal_obj = id;
    
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }
}

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

if (state == 1){
    image_index = 4+ (golden*12);
    
    with (asset_get("pHitBox")){
        if (player_id == other.player_id && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR)
        && hbox_num == 2 && place_meeting(x,y,other.id)){
            other.state = 3;
            if (attack == AT_FSPECIAL_AIR){
                other.state = 4;
                with (player_id){
                    set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED, -18);
                }
            }
            other.state_timer = 0;
        } else if (player_id == other.player_id
        && attack == AT_NSPECIAL && place_meeting(x,y,other.id)){
            other.state = 4;
            other.state_timer = 0;
            player_id.window = 4;
            player_id.window_timer = 0;
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

var break_time = 16;
if (state == 3){
    if (state_timer == 1){
        var tip = create_hitbox(AT_USPECIAL, 1, x, y-32);
        tip.hsp = 0;
        if (player_id.left_down) tip.hsp -= 3;
        if (player_id.right_down) tip.hsp += 3;
        tip.vsp = -10;
    }
    image_index = (golden*12)+ 9 + state_timer * 4 / break_time;
    if (state_timer == break_time){
        instance_destroy();
        exit;
    }
}
if (state == 4){
    image_index = (golden*12)+ 9 + state_timer * 4 / break_time;
    if (state_timer == break_time){
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


 