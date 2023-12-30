set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 10);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("dstrong"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX, sound_get("dstrong"));
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 21);

set_window_value(AT_DSTRONG, 10, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG, 6);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, small_leaf_hfx);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_leaf_heavy"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, medium_leaf_hfx);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -51);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 74);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, xlarge_leaf_hfx);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, small_leaf_hfx);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_leaf_heavy"));
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 36);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, medium_leaf_hfx);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -51);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 74);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 58);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, xlarge_leaf_hfx);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_LOCKOUT, 10);