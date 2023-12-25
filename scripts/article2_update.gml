//article2_update

if(myplayer == noone) myplayer = asset_get("oPlayer");
if (init == 0){
    init = 1;
    golden = myplayer.golden;
    myplayer.lump_obj = id;
    
     with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }
    state = 1;
}

state_timer++;

if (state == 1){
    image_index = (golden*3);
    
    with (asset_get("pHitBox")){
        if (player_id == other.player_id && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)
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
            other.state = 2;
            other.state_timer = 0;
            player_id.window = 4;
            player_id.window_timer = 0;
        }
    }
    
    with (asset_get("plasma_field_obj")){
        with (other.id){
            if (get_player_team(get_instance_player(other)) != get_player_team(player)){
                if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                    state = 2;
                    state_timer = 0;
                }
            }
        }
    }
    
    state_timer = 0;
    
}

var die_time = 6;
if (state == 2){
    image_index = (1 + (golden*3)) + state_timer * 2 / die_time;
    if (state_timer >= die_time){
        instance_destroy();
        exit;
    }
}

var break_time = 16;
if (state == 3){
    if (state_timer == 1){
        var ball = create_hitbox(AT_USPECIAL, 1, x, y);
        ball.image_index = (golden*3);
        if (player_id.left_down) ball.hsp -= 3;
        if (player_id.right_down) ball.hsp += 3;
        ball.vsp = -9;
    }
    image_index = (golden*3) + state_timer * 2 / break_time;
    if (state_timer == break_time){
        instance_destroy();
        exit;
    }
}