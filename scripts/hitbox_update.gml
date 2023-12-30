//hitbox_update
if (attack == AT_NSPECIAL){
    if (player_id.tip != noone && player_id.goal_obj != noone){
        with(asset_get("obj_article1")){
            if(other.player_id== player_id && place_meeting(x,y,other.id)){
                player_id.tip = player_id.goal_obj;
            }
        }
    }
}


if (attack == AT_USPECIAL){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) {in_hitpause = false;}
    } else {
        proj_angle += 20 * -spr_dir;
    }
    
    if (grav == 0 && player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND){
        destroyed=true;
    }
    
    if (hitbox_timer > 5){ //no hits right after it's created
        with (asset_get("pHitBox")){
            if (select == player_id.select && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)
            && hbox_num == 2 && place_meeting(x,y,other.id) && tip==noone){
                other.hitbox_timer = 0;
                other.hsp = 0;
                other.image_index= (golden*3);
                if (player_id.left_down) {other.hsp -= 3;}
                if (player_id.right_down) {other.hsp += 3;}
                if (attack == AT_NSPECIAL){
                    other.vsp = -10;}
                else{
                    other.vsp = 10;}
            }
            
        }
        with asset_get("obj_article1"){
            if(other.player_id == player_id && other.attack == AT_USPECIAL && other.hbox_num == 2 && place_meeting(x,y,other.id)){
                spawn_hit_fx(other.x, other.y, asset_get("hfx_leaf_small"));
                if(current_score < max_score)current_score++;{
                destroy_hitboxes();
                    
                }
                
            }
        }
    }
    
    
    if (!free){
        sound_play(asset_get("sfx_leafy_hit1"));
        instance_create(x, y, "obj_article2");
        destroyed = true;
    }
}

if (attack == AT_DSPECIAL_AIR){
    if (!free){
        if(!freemd) {
            goal_obj = instance_create(x-5*spr_dir, y+12, "obj_article1");
        }
        else{
        goal_obj = instance_create(x-5*spr_dir, y+35, "obj_article1");
        }
        goal_obj.player_id = player_id;
        goal_obj.player = player;
        goal_obj.spr_dir = -spr_dir;
        goal_obj.state = 0;
        goal_obj.image_index = 1;
        with (player_id){
            sound_play(sound_get("dspecial"));
        }
        
        instance_destroy();
        exit;
    }
    
    if (y > room_height + 100){
        instance_destroy();
        exit;
    }
    
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 30 * -spr_dir;
    }
    
}

if (attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG){
    if ((window == 3||window==8) && window_timer == 1 && !hitpause){
        with (asset_get("obj_article2")){
            if (player_id == other.id && state == 1 && place_meeting(x,y,other.id)){
                state = 3;
                state_timer = 0;
            }
        }
    }
}