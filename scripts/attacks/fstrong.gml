set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 10);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG,4);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 95);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 139);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 39);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, small_leaf_hfx);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_leaf_weak"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 161);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, medium_leaf_hfx);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 95);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 139);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 39);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, medium_leaf_hfx);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_leaf_heavy"));

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 161);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, xlarge_leaf_hfx);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));