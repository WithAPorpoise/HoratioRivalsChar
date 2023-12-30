//article2_update

if(myplayer == noone) myplayer = asset_get("oPlayer");
if (init == 0){
    init = 1;
    player_id.lump_obj = id;
    
    //Removing the previous ground lump when a new one spawns
     with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }
    state = 1;
}

//golden = player_id.golden;
state_timer++;

if (state == 1){
    image_index = (player_id.golden*3);
    
    with (asset_get("pHitBox")){
        if(player_id == other.player_id && self.id != player_id.tip){
            if (player_id == other.player_id && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR )&& place_meeting(x,y,other.id)){
                other.state = 2;
                other.state_timer = 0;
                /*var ball = create_hitbox(AT_USPECIAL, 1, x, y-32);
                ball.image_index = (player_id.golden*3);
                ball.hsp = 0;
                ball.vsp = -5;*/
                player_id.has_ground = true;
                player_id.window = 5;
            }
            else if (player_id == other.player_id && attack == AT_FSPECIAL && place_meeting(x,y,other.id)){
                other.state = 3;
                other.state_timer = 0;
            }
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
    image_index = (1 + (player_id.golden*3)) + state_timer * 2 / die_time;
    if (state_timer >= die_time){
        instance_destroy();
        exit;
    }
}

var launch_time = 6;
if (state == 3){
    if (state_timer == 1){
        var ball = create_hitbox(AT_USPECIAL, 1, x, y-32);
        ball.image_index = (player_id.golden*3);
        ball.hsp = 4*(player_id.spr_dir);
        ball.vsp = -9;
    }
    image_index = (player_id.golden*3) + state_timer * 2 / launch_time;
    if (state_timer == launch_time){
        instance_destroy();
        exit;
    }
}