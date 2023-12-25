//hitbox_update

if (attack == AT_USPECIAL){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 20 * -spr_dir;
    }
    
    if (grav == 0 && player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND){
        instance_destroy();
        exit;
    }
    
    if (hitbox_timer > 5){ //no hits right after it's created
        with (asset_get("pHitBox")){
            if (select == player_id.select && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)
            && hbox_num == 2 && place_meeting(x,y,other.id)){
                other.hitbox_timer = 0;
                other.hsp = 0;
                other.image_index= (golden*3);
                if (player_id.left_down) other.hsp -= 3;
                if (player_id.right_down) other.hsp += 3;
                if (attack == AT_NSPECIAL)
                    other.vsp = -10;
                else
                    other.vsp = 10;
            }
        }
    }
    
    if (!free){
        sound_play(asset_get("sfx_leafy_hit1"));
        instance_create(x-30*spr_dir, y-20, "obj_article2");
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