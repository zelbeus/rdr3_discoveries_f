--		EXAMPLE. MAKE FIREWORK BURST FROM YOUR PED:
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--		local new_ptfx_dictionary = "scr_lom_train"
--		local new_ptfx_name = "scr_ind1_firework_burst"
--
--		local is_particle_effect_active = false
--		local current_ptfx_dictionary = new_ptfx_dictionary
--		local current_ptfx_name = new_ptfx_name
--
--		local current_ptfx_handle_id = false
--
--		local ptfx_offcet_x = 0.0
--		local ptfx_offcet_y = 0.0
--		local ptfx_offcet_z = 0.0
--		local ptfx_rot_x = -90.0
--		local ptfx_rot_y = 0.0
--		local ptfx_rot_z = 0.0
--		local ptfx_scale = 1.0
--		local ptfx_axis_x = 0
--		local ptfx_axis_y = 0
--		local ptfx_axis_z = 0
--
--
--		Citizen.CreateThread(function()
--		   	while true do
--		        Citizen.Wait(0)
--		        if Citizen.InvokeNative(0x91AEF906BCA88877,0, 0x17BEC168) then   -- just pressed E
--		        	if not is_particle_effect_active then
--		        		current_ptfx_dictionary = new_ptfx_dictionary
--						current_ptfx_name = new_ptfx_name
--		        		if not Citizen.InvokeNative(0x65BB72F29138F5D6, GetHashKey(current_ptfx_dictionary)) then -- HasNamedPtfxAssetLoaded
--		        			Citizen.InvokeNative(0xF2B2353BBC0D4E8F, GetHashKey(current_ptfx_dictionary))  -- RequestNamedPtfxAsset
--		        			local counter = 0
--		        			while not Citizen.InvokeNative(0x65BB72F29138F5D6, GetHashKey(current_ptfx_dictionary)) and counter <= 300 do  -- while not HasNamedPtfxAssetLoaded
--		        				Citizen.Wait(0)
--		        			end
--		        		end
--		    			if Citizen.InvokeNative(0x65BB72F29138F5D6, GetHashKey(current_ptfx_dictionary)) then  -- HasNamedPtfxAssetLoaded
--		    				Citizen.InvokeNative(0xA10DB07FC234DD12, current_ptfx_dictionary) -- UseParticleFxAsset
--
--
--		    				current_ptfx_handle_id =  Citizen.InvokeNative(0xE6CFE43937061143,current_ptfx_name,PlayerPedId(),ptfx_offcet_x,ptfx_offcet_y,ptfx_offcet_z,ptfx_rot_x,ptfx_rot_y,ptfx_rot_z,ptfx_scale,ptfx_axis_x,ptfx_axis_y,ptfx_axis_z)    -- StartNetworkedParticleFxNonLoopedOnEntity
--		    				is_particle_effect_active = true
--						else
--							print("cant load ptfx dictionary!")
--		    			end
--		        	else
--		        		if current_ptfx_handle_id then
--							if Citizen.InvokeNative(0x9DD5AFF561E88F2A, current_ptfx_handle_id) then   -- DoesParticleFxLoopedExist
--								Citizen.InvokeNative(0x459598F579C98929, current_ptfx_handle_id, false)   -- RemoveParticleFx
--							end
--						end
--						current_ptfx_handle_id = false
--						is_particle_effect_active = false
--		        	end
--		        end
--		    end
--		end)
--
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------

-- ptfx_assets_non_looped = {
-- 	[ptfx_dictionary] = {ptfx_name},
-- }

local ptfx_assets_non_looped = {
	["scr_beechers"] = {
		"ent_brk_wood_planks",
		"ent_brk_wood_splinter",
		"ent_dst_dust",
	},
	["scr_mob3"] = {
		"scr_mob3_tram_panel_sparks",
		"scr_mob3_tram_sparks_sp",
	},
	["scr_beat_gator_hunters"] = {
		"scr_beat_gator_blood",
	},
	["scr_grays3"] = {
		"scr_grays_blood_headshot",
	},
	["scr_net_gunslinger"] = {
		"scr_sht_moneybag_coins",
	},
	["scr_fme_spawn_effects"] = {
		"scr_fme_smoke_puff_tint",
		"scr_net_fetch_smoke_puff",
	},
	["des_guama3_tower_exp"] = {
		"ent_ray_guama3_tower_exp",
		"exp_smoke_trail",
	},
	["scr_sadie2"] = {
		"ent_brk_door_lock",
		"scr_sad2_liq_splash",
		"scr_sad2_logwagon_dust",
	},
	["scr_beat_drown_murder"] = {
		"scr_beat_drown_splash",
	},
	["scr_winter4"] = {
		"scr_wnt4_private_car_breach",
	},
	["anm_kieran"] = {
		"ent_anim_food_plate_flip",
	},
	["scr_lom_train"] = {
		"scr_ind1_firework_burst",
		"scr_ind1_firework_burst_lead",
		"scr_ind1_firework_burst_long",
		"scr_ind1_firework_burst_long_lead",
		"scr_ind1_firework_burst_short",
		"scr_ind1_firework_burst_short_lead",
		"scr_ind1_firework_points",
		"scr_ind1_firework_points_lead",
		"scr_ind1_firework_ribbon",
		"scr_ind1_firework_ribbon_lead",
		"scr_ind1_firework_trail",
		"scr_ind1_firework_trail_long",
		"scr_ind1_firework_trail_ribbon",
		"scr_ind1_firework_trail_short",
		"scr_lom_train_firework",
		"scr_lom_train_firework_burst_lead",
		"scr_lom_train_firework_burst_long_lead",
		"scr_lom_train_firework_burst_short_lead",
		"scr_lom_train_firework_points_lead",
		"scr_lom_train_firework_ribbon_lead",
	},
	["scr_mg_fishing"] = {
		"scr_mg_fish_splash",
		"scr_mg_fish_struggle",
	},
	["scr_grays1"] = {
		"bul_decal_water",
		"exp_smoke_trail",
		"scr_gry1_exp",
		"scr_gry1_exp_ground",
		"scr_gry1_exp_jugs",
	},
	["anm_oddf"] = {
		"ent_anim_oddf_firework_burst",
		"ent_anim_oddf_powder_flash",
		"ent_anim_oddf_powder_flash_show",
		"scr_ind1_firework_trail_short",
	},
	["anm_brt"] = {
		"cs_mud2_mud_splash_body",
		"cs_mud2_mud_splash_hand",
		"ent_anim_cheers_splash",
		"ent_anim_moonshine_splash",
		"liquid_splash_water",
	},
	["anm_water_panning"] = {
		"ent_anim_water_panning_drop",
		"ent_anim_water_panning_put_down",
		"ent_anim_water_panning_slam",
	},
	["anm_foodprep"] = {
		"ent_anim_apple_bite_juice",
		"ent_anim_food_plate",
		"ent_anim_gut_blood_flick",
		"ent_anim_gut_blood_spurt",
		"ent_anim_gut_dried_meat_spurt",
		"ent_anim_ladle_food_splash",
		"sp_blood_drip_splash",
	},
	["des_guama3_cannon_exp"] = {
		"exp_gua3_cannon_exp",
		"exp_smoke_trail",
	},
	["scr_beat_murder_for_hire"] = {
		"scr_beat_murder_blood",
	},
	["scr_net_beat_wagon_lift"] = {
		"scr_net_beat_wagon_blood",
		"scr_net_beat_wagon_dust",
	},
	["scr_dm_ht"] = {
		"scr_dm_ht_swap_smoke",
		"scr_mp_item_pickup_smoke",
	},
	["anm_fin"] = {
		"ent_anim_fin_horse_fall_dust",
		"ent_anim_fin_roll_dust",
	},
	["scr_braithwaites1"] = {
		"scr_braithwaites1_des_bottles",
		"scr_brt1_bar_mg_glass_smash",
		"scr_brt1_bar_mg_liq_splash",
		"scr_brt1_bar_mg_liq_up_splash",
	},
	["scr_dm_ftb"] = {
		"scr_mp_chest_spawn_smoke",
	},
	["anm_human_sick_pee"] = {
		"ent_anim_cough_spray",
		"ent_anim_shit_decal",
		"ent_anim_shit_rain",
		"ent_anim_snot_blow",
		"liquid_splash_pee",
	},
	["scr_utopia2"] = {
		"bul_decal_water",
		"scr_utopia2_exp_decal_sp",
		"scr_utopia2_exp_ground",
		"scr_utopia2_exp_post_splash",
		"scr_utopia2_explosion_post",
		"scr_utopia2_uw_silt",
	},
	["des_alchemist"] = {
		"ent_amb_alchemist_post_fire",
		"ent_amb_alchemist_post_fire_plume",
		"ent_exp_dis_alchemist",
		"exp_smoke_trail",
	},
	["anm_gang2"] = {
		"ent_anim_gng2_balloon_crash_spl",
	},
	["anm_fire"] = {
		"ent_anim_exp_grd_lantern",
		"ent_anim_fire_fuel_burst",
		"ent_anim_moon1_roof_collapse_embers",
		"ent_anim_throw_embers",
	},
	["des_mob3"] = {
		"ent_ray_mob3_crash_exp",
		"ent_ray_mob3_wagon_exp",
		"ent_ray_mob3_wood_planks",
		"ent_ray_mob3_wood_splinters",
		"exp_smoke_trail",
	},
	["anm_lom"] = {
		"ent_anim_lom_blood_burst",
		"ent_anim_lom_blood_exit",
		"ent_anim_lom_cig_exhale_mth",
		"ent_anim_lom_impact_dustcloud",
	},
	["scr_odd_fellows"] = {
		"scr_river5_magician_smoke",
	},
	["cut_rrtl"] = {
		"cs_rrtl_exp_smoke",
		"cs_rrtl_sparks",
	},
	["scr_mob4"] = {
		"scr_mob4_ped_water_splash",
	},
	["cut_mud"] = {
		"cs_mud2_des_bottle",
	},
	["cut_rdown"] = {
		"cs_rdown_blood_cough",
	},
	["scr_net_race_checkpoints"] = {
		"scr_ind1_firework_burst",
		"scr_ind1_firework_trail",
		"scr_mp_item_pickup_spawn",
		"scr_net_race_barrel_break",
		"scr_net_race_box_break",
		"scr_net_race_checkpoint",
		"scr_net_race_finish_firework_burst",
		"scr_net_race_finish_firework_burst_trail",
		"scr_net_race_finish_firework_sparks",
		"scr_net_race_starting_flare",
		"scr_net_race_starting_flare_lead",
	},
	["scr_beat_street_fight"] = {
		"scr_beat_str_fght_win_smh",
	},
	["cut_rdopn"] = {
		"cs_rdopn_exhale_mouth_pipe",
	},
	["des_grh_outhouse"] = {
		"ent_ray_grh_poop_decal_spawner_sp",
		"ent_ray_grh_poop_exp",
	},
	["scr_std1"] = {
		"exp_grd_moonshine_trails_spawn",
		"exp_smoke_trail",
		"scr_nbd1_exp_bankwall",
		"scr_nbd1_exp_bankwall_impact",
		"scr_nbd1_exp_roof",
	},
	["des_utopia1"] = {
		"ent_amb_falling_debris",
		"ent_ray_utopia1_col_dust",
	},
	["scr_beat_horse_race"] = {
		"scr_beat_horse_race_bridge_smk",
	},
	["scr_poisoned_well"] = {
		"exp_smoke_trail",
		"scr_poisoned_well_exp",
		"scr_poisoned_well_fog",
	},
	["anm_coffee"] = {
		"ent_anim_coffee_discard",
		"ent_anim_coffee_pour",
		"ent_anim_coffee_spit",
		"ent_anim_coffee_toss",
		"ent_anim_tea_toss",
	},
	["anm_sal"] = {
		"ent_anim_sal1_drown_splash_enter",
		"ent_anim_sal1_drown_splash_exit",
	},
	["anm_odr"] = {
		"ent_anim_kick_dust",
	},
	["des_val_jail"] = {
		"ent_ray_val_jailwall_exp",
		"ent_ray_val_jailwall_linger",
		"exp_smoke_trail",
	},
	["scr_beat_bloated_corpse"] = {
		"scr_beat_corpse_water_bubble_spawn",
	},
	["anm_rally"] = {
		"ent_anim_rally_cross_dust",
		"ent_anim_rally_cross_fire",
	},
	["scr_jack2"] = {
		"ent_anim_spit_venom",
	},
	["anm_homerobbery"] = {
		"ent_anim_corpse_mud_splash",
		"ent_anim_wood_splinter_dir",
	},
	["scr_train_robbery4"] = {
		"ent_anim_trn4_train_coal",
		"ent_anim_trn4_train_impact",
		"ent_exp_trn4_carriage_exp",
		"exp_grd_smoke_post_small",
		"exp_smoke_trail",
		"scr_trn4_train_exp",
		"scr_trn4_train_smoke",
		"scr_trn4_wall_dynamite",
	},
	["scr_ind1"] = {
		"ent_anim_ind_firework_light_flash",
		"scr_ind1_firework_burst",
		"scr_ind1_firework_burst_lead",
		"scr_ind1_firework_burst_long",
		"scr_ind1_firework_burst_long_lead",
		"scr_ind1_firework_burst_short",
		"scr_ind1_firework_burst_short_lead",
		"scr_ind1_firework_points",
		"scr_ind1_firework_points_lead",
		"scr_ind1_firework_ribbon",
		"scr_ind1_firework_ribbon_lead",
		"scr_ind1_firework_trail",
		"scr_ind1_firework_trail_long",
		"scr_ind1_firework_trail_ribbon",
		"scr_ind1_firework_trail_short",
	},
	["scr_mason"] = {
		"scr_mason_camera_flash",
	},
	["anm_spit"] = {
		"ent_anim_saliva_spit",
		"ent_anim_saliva_tobacco_spit",
		"ent_anim_spit",
		"ent_anim_spit_blood_lip",
		"ent_anim_spit_cigar_end",
		"ent_anim_spit_kill_cam",
		"ent_anim_spit_kill_cam_sp",
		"ent_anim_spit_phlegm",
		"ent_anim_spit_venom",
		"ent_anim_squirt_syringe",
	},
	["anm_smoking"] = {
		"cs_matchstick_spark",
		"ent_anim_cig_exhale_mth",
		"ent_anim_cig_exhale_mth_car",
		"ent_anim_cig_exhale_mth_short",
		"ent_anim_cig_exhale_nse",
		"ent_anim_cig_exhale_nse_car",
		"ent_anim_cig_sparks",
		"ent_anim_elec_sparks",
		"ent_anim_matchstick_spark",
	},
	["scr_mudtown5"] = {
		"scr_mud5_safe_exp_post",
	},
	["anm_weapons"] = {
		"ent_anim_muz_pistol",
		"ent_anim_muz_rifle",
		"ent_anim_muzzle_flash_light",
	},
	["scr_demo1"] = {
		"scr_mud5_safe_exp_post",
	},
	["scr_odr3"] = {
		"scr_odr3_pour_gunpowder",
		"scr_odr3_surgery_gunpowder",
	},
	["core"] = {
		"bang_ash",
		"bang_blood",
		"bang_carmetal",
		"bang_carmetal_no_sparks",
		"bang_clay",
		"bang_concrete",
		"bang_dirt_dry",
		"bang_dust",
		"bang_glass",
		"bang_gravel",
		"bang_hay",
		"bang_ice",
		"bang_leaves",
		"bang_leaves_ficus",
		"bang_leaves_maple",
		"bang_leaves_oak",
		"bang_manure",
		"bang_metal",
		"bang_metal_no_sparks",
		"bang_moss",
		"bang_mud",
		"bang_mud_soft",
		"bang_mud_underwater",
		"bang_ped_bushes",
		"bang_ped_foot_mud_soft",
		"bang_ped_foot_tar",
		"bang_ped_tree_pine",
		"bang_ped_tree_pine_snow",
		"bang_sand",
		"bang_sand_wet",
		"bang_slush",
		"bang_snow",
		"bang_tar",
		"bang_twigs",
		"bang_vegetation",
		"bang_wood",
		"blood_animal_maul",
		"blood_animal_maul_decal",
		"blood_animal_maul_mouth",
		"blood_blunt_weap_hit",
		"blood_dismember_corpse_hand",
		"blood_dismember_corpse_head",
		"blood_dismember_foot",
		"blood_dismember_hand",
		"blood_dismember_head",
		"blood_drip_head",
		"blood_entry",
		"blood_entry_corpse",
		"blood_entry_critical",
		"blood_entry_dead",
		"blood_entry_decal_pool",
		"blood_entry_head_fatal",
		"blood_entry_player",
		"blood_entry_underwater",
		"blood_exit",
		"blood_exit_critical",
		"blood_explosive_bullet",
		"blood_explosive_bullet_Med",
		"blood_fall",
		"blood_glancing",
		"blood_glancing_player",
		"blood_melee_hit",
		"blood_mist",
		"blood_ped_trample",
		"blood_small_animal_explode",
		"blood_train",
		"blood_wheel",
		"bul_bone",
		"bul_bushes",
		"bul_bushes_sapling",
		"bul_bushes_twigs",
		"bul_cactus",
		"bul_carmetal",
		"bul_ceramic",
		"bul_chickenfarm",
		"bul_cloth",
		"bul_concrete",
		"bul_decal_mud",
		"bul_decal_oil",
		"bul_decal_water",
		"bul_decal_water_gatling",
		"bul_decal_water_sg",
		"bul_dirt",
		"bul_exp_shrapnel_falling_dust",
		"bul_generic",
		"bul_generic_dusty",
		"bul_generic_liquidy",
		"bul_generic_overhang_falling_dust",
		"bul_glass",
		"bul_glass_thin",
		"bul_grass",
		"bul_grass_alt",
		"bul_grass_gatling",
		"bul_gravel",
		"bul_gravel_grass",
		"bul_hay",
		"bul_leather",
		"bul_leaves",
		"bul_leaves_ficus",
		"bul_leaves_maple",
		"bul_leaves_oak",
		"bul_metal_chain",
		"bul_metal_small",
		"bul_mud",
		"bul_muddy_dirt",
		"bul_paper",
		"bul_plaster_brittle",
		"bul_plaster_brittle_alt",
		"bul_powder",
		"bul_sack",
		"bul_small_bird_feathers",
		"bul_snow_deep",
		"bul_stone",
		"bul_tobacco",
		"bul_water_debris_sp",
		"bul_wicker",
		"bul_wood_embers",
		"bul_wood_rotten",
		"bul_wood_solid_small",
		"bul_wood_splinter",
		"bul_wood_splinter_alt",
		"bul_wood_splinter_gatling",
		"bul_wood_splinter_gatling_alt",
		"bul_wood_splinter_sg",
		"eject_gatling",
		"eject_gatling_maxim",
		"eject_pistol_shell",
		"eject_repeater_shell",
		"eject_revolver",
		"eject_revolver_cattleman",
		"eject_revolver_shell",
		"eject_rifle",
		"eject_rifle_shell",
		"eject_shotgun",
		"eject_shotgun_db",
		"eject_shotgun_shell",
		"eject_sniper_shell",
		"ent_amb_elec_crackle_sp",
		"ent_amb_falling_debris",
		"ent_amb_falling_dust_debris",
		"ent_amb_falling_smoke",
		"ent_amb_falling_smoke_bam",
		"ent_amb_following_dust",
		"ent_amb_gutter_splash_spawn",
		"ent_amb_impact_interior",
		"ent_amb_insect_dragonfly",
		"ent_amb_insect_water_bug_bubbles",
		"ent_amb_match_ignite",
		"ent_amb_oil_drips_spawned",
		"ent_amb_sewer_drips_spawned",
		"ent_amb_swamp_bubbles",
		"ent_amb_tar_bubbles_broken",
		"ent_amb_trap_leaves",
		"ent_amb_tree_snowfall",
		"ent_amb_water_drips_spawned",
		"ent_amb_water_drips_spawned_sm_sound",
		"ent_amb_wind_cactus_dust",
		"ent_amb_wind_snow_drifts_tree_lrg",
		"ent_amb_wind_snow_drifts_tree_med",
		"ent_amb_wind_snow_drifts_tree_sma",
		"ent_amb_work_shovel_mud",
		"ent_anim_ann_coal_leak",
		"ent_brk_banknotes",
		"ent_brk_blood",
		"ent_brk_bone",
		"ent_brk_bread",
		"ent_brk_brick",
		"ent_brk_burning_crumble",
		"ent_brk_burning_ignite",
		"ent_brk_cactus",
		"ent_brk_candle",
		"ent_brk_ceramic",
		"ent_brk_clay",
		"ent_brk_cloth",
		"ent_brk_coins",
		"ent_brk_concrete",
		"ent_brk_concrete_large",
		"ent_brk_cotton",
		"ent_brk_dirt",
		"ent_brk_door_frame_dust",
		"ent_brk_door_lock",
		"ent_brk_dust",
		"ent_brk_embers",
		"ent_brk_feathers",
		"ent_brk_flammable",
		"ent_brk_flesh",
		"ent_brk_flowers",
		"ent_brk_glass",
		"ent_brk_glass_bottle",
		"ent_brk_grain",
		"ent_brk_gravel",
		"ent_brk_gravestone",
		"ent_brk_hay",
		"ent_brk_husk",
		"ent_brk_ice",
		"ent_brk_jug",
		"ent_brk_lantern",
		"ent_brk_lantern_glass",
		"ent_brk_leather",
		"ent_brk_metal_frag",
		"ent_brk_metal_spark",
		"ent_brk_moonshine",
		"ent_brk_paper",
		"ent_brk_pelt_fur",
		"ent_brk_poop",
		"ent_brk_rock",
		"ent_brk_rubble",
		"ent_brk_sand",
		"ent_brk_sparking_wires",
		"ent_brk_steam_burst",
		"ent_brk_steam_pipe",
		"ent_brk_tobacco",
		"ent_brk_tree_leaves",
		"ent_brk_tree_trunk_bark",
		"ent_brk_upholstery",
		"ent_brk_uprooted",
		"ent_brk_wood_planks",
		"ent_brk_wood_splinter",
		"ent_col_bush_leaves",
		"ent_col_electrical",
		"ent_col_falling_snow",
		"ent_col_gen_tree_dust",
		"ent_col_palm_leaves",
		"ent_col_rocks",
		"ent_col_tree_leaves",
		"ent_col_tree_leaves_birch",
		"ent_col_tree_leaves_ficus",
		"ent_col_tree_leaves_maple",
		"ent_col_tree_leaves_oak",
		"ent_col_tree_leaves_pine",
		"ent_dst_blood",
		"ent_dst_bone",
		"ent_dst_box_nails",
		"ent_dst_bread",
		"ent_dst_brick",
		"ent_dst_brick_vertical",
		"ent_dst_bronte_win",
		"ent_dst_burning_crumble",
		"ent_dst_burning_ignite",
		"ent_dst_cactus",
		"ent_dst_candle",
		"ent_dst_candy_jar",
		"ent_dst_carmetal",
		"ent_dst_ceramic_vase",
		"ent_dst_ceramics",
		"ent_dst_chick_carcass",
		"ent_dst_cig_packets",
		"ent_dst_cigarette",
		"ent_dst_clay",
		"ent_dst_clock_metal",
		"ent_dst_cloth",
		"ent_dst_concrete",
		"ent_dst_concrete_large",
		"ent_dst_concrete_pillar",
		"ent_dst_concrete_pillar_linger",
		"ent_dst_cotton",
		"ent_dst_dirt",
		"ent_dst_dreamcatcher",
		"ent_dst_dust",
		"ent_dst_egg",
		"ent_dst_electrical",
		"ent_dst_embers",
		"ent_dst_feather",
		"ent_dst_feathers",
		"ent_dst_flammable",
		"ent_dst_flesh",
		"ent_dst_flowers",
		"ent_dst_gen_cardboard",
		"ent_dst_gen_food",
		"ent_dst_gen_liquid_burst",
		"ent_dst_gen_paper",
		"ent_dst_gen_veg",
		"ent_dst_gen_veg_pulp",
		"ent_dst_gen_veg_small",
		"ent_dst_gen_veg_small_pulp",
		"ent_dst_gen_water_spray",
		"ent_dst_glass",
		"ent_dst_glass_bottles",
		"ent_dst_glass_bottles_beer",
		"ent_dst_glass_bulb",
		"ent_dst_glass_headlight",
		"ent_dst_glass_liquid",
		"ent_dst_glass_medicine",
		"ent_dst_glass_moonshine",
		"ent_dst_glass_round_lrg",
		"ent_dst_gourd",
		"ent_dst_grain",
		"ent_dst_gravel",
		"ent_dst_gravestone",
		"ent_dst_hanging_herb",
		"ent_dst_hay",
		"ent_dst_husk",
		"ent_dst_ice",
		"ent_dst_icicle",
		"ent_dst_jug",
		"ent_dst_jug_liquid",
		"ent_dst_lantern",
		"ent_dst_lantern_blast",
		"ent_dst_lantern_glass",
		"ent_dst_leather",
		"ent_dst_litter",
		"ent_dst_mail",
		"ent_dst_metal_can",
		"ent_dst_metal_frag",
		"ent_dst_metal_spark",
		"ent_dst_moonshine_jug",
		"ent_dst_newspaper",
		"ent_dst_office_paper",
		"ent_dst_peanuts",
		"ent_dst_pelt_fur",
		"ent_dst_plant_leaves",
		"ent_dst_poker_card",
		"ent_dst_poker_chip",
		"ent_dst_poop",
		"ent_dst_poop_splash",
		"ent_dst_pot",
		"ent_dst_pot_leaves",
		"ent_dst_rock",
		"ent_dst_rotten_fish",
		"ent_dst_rubbish",
		"ent_dst_rubble",
		"ent_dst_sand",
		"ent_dst_seat_pad",
		"ent_dst_snow",
		"ent_dst_snow_lrg",
		"ent_dst_snow_rails",
		"ent_dst_snow_tombs",
		"ent_dst_sparking_wires",
		"ent_dst_steam_pipe",
		"ent_dst_tobacco",
		"ent_dst_tobacco_dried",
		"ent_dst_tobacco_leaf",
		"ent_dst_tower_debris",
		"ent_dst_upholstery",
		"ent_dst_wet_sand",
		"ent_dst_wood_barrel",
		"ent_dst_wood_chunky",
		"ent_dst_wood_planks",
		"ent_dst_wood_splinter",
		"ent_dst_wood_spoke",
		"ent_dst_wood_structure",
		"ent_dst_yarrow",
		"ent_dst_yarrow_slw",
		"ent_exp_bone",
		"ent_exp_concrete",
		"ent_exp_cotton_bale",
		"ent_exp_cotton_bale_sm",
		"ent_exp_wood",
		"ent_exp_wood_barrel",
		"ent_exp_wood_barrel_liquid",
		"ent_exp_wood_crate",
		"ent_exp_wood_fence",
		"ent_exp_wood_fence_med",
		"ent_exp_wood_post",
		"ent_ray_mud2_window_smash",
		"ent_sht_bear_trap",
		"ent_sht_beer_barrel",
		"ent_sht_beer_barrel_splash",
		"ent_sht_blood",
		"ent_sht_blood_splash",
		"ent_sht_bone",
		"ent_sht_bush_foliage",
		"ent_sht_cactus",
		"ent_sht_cardboard",
		"ent_sht_cotton_bale",
		"ent_sht_electrical_box",
		"ent_sht_fabric",
		"ent_sht_feathers",
		"ent_sht_flame",
		"ent_sht_flour_sack",
		"ent_sht_flower_petals",
		"ent_sht_gloopy_liquid",
		"ent_sht_grain_sack",
		"ent_sht_hay",
		"ent_sht_kerosene",
		"ent_sht_milk",
		"ent_sht_moonshine",
		"ent_sht_moonshine_moving",
		"ent_sht_oil",
		"ent_sht_paper_bails",
		"ent_sht_pillow",
		"ent_sht_rock",
		"ent_sht_rubbish",
		"ent_sht_sandbag",
		"ent_sht_snow_covered_bark",
		"ent_sht_snow_covered_tree",
		"ent_sht_sparking_wires",
		"ent_sht_steam",
		"ent_sht_steam_still",
		"ent_sht_sugar_sack",
		"ent_sht_telegraph_pole",
		"ent_sht_water",
		"ent_sht_water_tower",
		"ent_sht_window_glass",
		"exp_air_dynamite",
		"exp_air_dynamite_volatile",
		"exp_air_firebottle",
		"exp_air_firebottle_volatile",
		"exp_bullet",
		"exp_dynamite_crates",
		"exp_grd_cannon",
		"exp_grd_dynamite",
		"exp_grd_dynamite_placed",
		"exp_grd_dynamite_volatile",
		"exp_grd_lantern",
		"exp_grd_moonshine",
		"exp_grd_moonshine_trails_spawn",
		"exp_grd_smoke_post",
		"exp_grd_smoke_post_small",
		"exp_grd_smoke_post_volatile",
		"exp_incendiary_bullet",
		"exp_lantern_flame_sp",
		"exp_lightning_strike",
		"exp_mtl_concrete",
		"exp_mtl_dirt",
		"exp_mtl_feather",
		"exp_mtl_flame",
		"exp_mtl_flesh",
		"exp_mtl_glass",
		"exp_mtl_grass",
		"exp_mtl_leaves",
		"exp_mtl_metal",
		"exp_mtl_mud",
		"exp_mtl_snow",
		"exp_mtl_wood",
		"exp_smoke_trail",
		"exp_smoke_trail_volatile",
		"exp_tracking_arrow",
		"exp_water",
		"exp_water_spout_decals_sp",
		"exp_wood_barrel_liquid_spawner_sp",
		"exp_wood_debris",
		"fire_ped_smoulder",
		"gun_barrel_eject_smoke",
		"gun_hammer_lemat",
		"gun_hammer_revolver",
		"liquid_splash_gloopy",
		"liquid_splash_milk",
		"liquid_splash_oil",
		"liquid_splash_petrol",
		"liquid_splash_water",
		"mech_ped_sparks",
		"mel_grass",
		"mel_metal",
		"mel_wood",
		"mel_wood_rotten",
		"mtl_debris_fallen_gravel_heavy",
		"mtl_debris_fallen_gravel_light",
		"mtl_debris_fallen_gravel_medium",
		"muz_cannon",
		"muz_gatling",
		"muz_revolver",
		"muz_revolver_fp",
		"muz_rifle",
		"muz_rifle_elephant",
		"muz_rifle_fp",
		"muz_shotgun",
		"ped_breath",
		"ped_breath_bear",
		"ped_breath_dog",
		"ped_breath_horse",
		"ped_foot_ash",
		"ped_foot_ash_horse",
		"ped_foot_ash_horse_lift",
		"ped_foot_ash_muddy",
		"ped_foot_ash_muddy_horse",
		"ped_foot_ash_muddy_horse_lift",
		"ped_foot_blood_pool",
		"ped_foot_blood_pool_animal",
		"ped_foot_blood_pool_horse",
		"ped_foot_blood_pool_lift",
		"ped_foot_coal",
		"ped_foot_coal_wet",
		"ped_foot_dirt_dry",
		"ped_foot_dirt_dry_animal",
		"ped_foot_dirt_dry_horse",
		"ped_foot_dirt_dry_horse_lift",
		"ped_foot_dirt_grass_horse",
		"ped_foot_dirt_muddy",
		"ped_foot_dirt_muddy_horse",
		"ped_foot_dirt_underwater",
		"ped_foot_dust",
		"ped_foot_dust_animal",
		"ped_foot_dust_bear",
		"ped_foot_dust_horse",
		"ped_foot_grass_horse",
		"ped_foot_grass_short_horse",
		"ped_foot_gravel",
		"ped_foot_gravel_animal",
		"ped_foot_gravel_dirt",
		"ped_foot_gravel_dirt_horse",
		"ped_foot_gravel_grass_horse",
		"ped_foot_gravel_horse",
		"ped_foot_gravel_muddy",
		"ped_foot_gravel_muddy_horse",
		"ped_foot_gravel_wet_animal",
		"ped_foot_gravel_wet_horse",
		"ped_foot_hay",
		"ped_foot_leaves",
		"ped_foot_leaves_animal",
		"ped_foot_leaves_ficus_horse",
		"ped_foot_leaves_ficus_wet_horse",
		"ped_foot_leaves_horse",
		"ped_foot_leaves_maple_horse",
		"ped_foot_leaves_maple_wet_horse",
		"ped_foot_leaves_oak_horse",
		"ped_foot_leaves_oak_wet_horse",
		"ped_foot_leaves_wet",
		"ped_foot_leaves_wet_animal",
		"ped_foot_leaves_wet_horse",
		"ped_foot_marsh_underwater",
		"ped_foot_mud_liquid",
		"ped_foot_mud_liquid_horse",
		"ped_foot_mud_liquid_lift",
		"ped_foot_mud_liquid_lift_horse",
		"ped_foot_mud_soft",
		"ped_foot_mud_soft_animal",
		"ped_foot_mud_soft_horse",
		"ped_foot_mud_soft_lift",
		"ped_foot_mud_underwater",
		"ped_foot_mud_wet",
		"ped_foot_mud_wet_horse",
		"ped_foot_oil_pool",
		"ped_foot_oil_pool_animal",
		"ped_foot_oil_pool_horse",
		"ped_foot_oil_pool_lift",
		"ped_foot_petrol_pool",
		"ped_foot_petrol_pool_animal",
		"ped_foot_petrol_pool_horse",
		"ped_foot_petrol_pool_lift",
		"ped_foot_powder",
		"ped_foot_powder_horse",
		"ped_foot_sand_horse",
		"ped_foot_sand_horse_lift",
		"ped_foot_sand_wet",
		"ped_foot_sand_wet_animal",
		"ped_foot_sand_wet_horse",
		"ped_foot_sand_wet_horse_lift",
		"ped_foot_sand_wet_lift",
		"ped_foot_snow",
		"ped_foot_snow_animal",
		"ped_foot_snow_horse",
		"ped_foot_twigs",
		"ped_foot_twigs_horse",
		"ped_foot_twigs_wet",
		"ped_foot_twigs_wet_horse",
		"ped_foot_veg_wet",
		"ped_foot_veg_wet_horse",
		"ped_foot_water",
		"ped_foot_water_animal",
		"ped_foot_water_horse",
		"ped_foot_water_lift",
		"ped_foot_water_puddle",
		"ped_foot_water_puddle_horse",
		"ped_foot_wood",
		"ped_foot_wood_animal",
		"ped_foot_wood_horse",
		"ped_foot_wood_lift",
		"ped_foot_wood_wet",
		"ped_foot_wood_wet_animal",
		"ped_foot_wood_wet_horse",
		"ped_horse_obstacle_clip_dust",
		"ped_snow_splash",
		"ped_trample_dust",
		"proj_arrow_trail_mp_sp",
		"scr_exp_outlaw2_fortwall_mp",
		"scr_exp_revenge1_barricade_mp",
		"sp_blood_drip_splash",
		"sp_ent_sparking_wires",
		"sp_fire_petrol_trail_embers",
		"TD_blood_entry_critical",
		"TD_blood_melee_hit",
		"TD_blood_point_blank",
		"veh_backfire",
		"veh_debris_trail",
		"veh_light_amber",
		"veh_light_clear",
		"veh_light_red",
		"veh_respray_smoke",
		"veh_stow_dust",
		"water_boat_entry",
		"water_boat_oar_enter",
		"water_boat_oar_exit",
		"water_canoe_entry",
		"water_canoe_oar_enter",
		"water_canoe_oar_exit",
		"water_splash_bobber_in",
		"water_splash_gator",
		"water_splash_gator_in",
		"water_splash_gator_out",
		"water_splash_horse_in",
		"water_splash_horse_out",
		"water_splash_obj_in",
		"water_splash_obj_out",
		"water_splash_ped",
		"water_splash_ped_bird_in",
		"water_splash_ped_bird_out",
		"water_splash_ped_bubbles",
		"water_splash_ped_in",
		"water_splash_ped_lod",
		"water_splash_ped_out",
		"water_splash_ped_small_bubbles",
		"water_splash_rope_in",
		"water_splash_rope_out",
		"water_splash_veh_in",
		"water_splash_veh_out",
		"wtr_rocks_rnd_splash",
		"wtr_rocks_wall_splash",
		"wtr_rocks_wall_upward_splash",
		"wtr_sea_pole_splash",
	},
	["scr_net_beat_gator_hunters"] = {
		"scr_net_beat_gator_blood",
	},
	["scr_beat_grave_robbers"] = {
		"scr_beat_grave_dust",
	},
	["scr_train_robbery3"] = {
		"scr_trn3_water_splashes",
		"scr_trn_exp_bridge",
		"scr_trn_exp_bridge_landing",
	},
	["anm_chamberpot"] = {
		"ent_anim_chamberpot_splash_spawned",
		"ent_anim_chamberpot_toss_ped_splash_back",
		"ent_anim_chamberpot_toss_ped_splash_front",
		"ent_anim_chamberpot_toss_tap",
	},
	["anm_climbing"] = {
		"ent_anim_foot_climb_dust",
		"ent_anim_ped_foot_gravel_debris",
	},
	["scr_fm_mission_creator"] = {
		"scr_mp_dust_cloud",
		"scr_mp_splash",
	},
	["scr_rcm_kitty"] = {
		"scr_rcm_kitty_hayloft_dust",
	},
	["scr_guama3"] = {
		"scr_gua3_window_smash",
	},
	["scr_annesburg"] = {
		"blood_stone_crusher_exp",
	},
	["anm_ind"] = {
		"ent_anim_ind_firework_light_flash",
		"ent_anim_ind_firework_light_flash_bright",
		"scr_ind1_firework_burst",
		"scr_ind1_firework_burst_lead",
		"scr_ind1_firework_burst_long",
		"scr_ind1_firework_burst_long_lead",
		"scr_ind1_firework_burst_short",
		"scr_ind1_firework_burst_short_lead",
		"scr_ind1_firework_points",
		"scr_ind1_firework_points_lead",
		"scr_ind1_firework_ribbon",
		"scr_ind1_firework_ribbon_lead",
		"scr_ind1_firework_trail",
		"scr_ind1_firework_trail_long",
		"scr_ind1_firework_trail_ribbon",
		"scr_ind1_firework_trail_short",
	},
	["des_bnk_safe_exp"] = {
		"ent_ray_bnk_safe_exp_debris",
		"ent_ray_bnk_safe_exp_end",
		"ent_ray_bnk_safe_exp_start",
	},
	["scr_beat_skipping_stones"] = {
		"ent_amb_water_splash_sm",
	},
	["cut_utopia2"] = {
		"cs_utopia2_water_splash_lrg_001",
		"cs_utopia2_water_splash_lrg_002",
		"cs_utopia2_water_splash_lrg_003",
		"cs_utopia2_water_splash_ped",
		"cs_utopia2_water_splash_sm_001",
		"cs_utopia2_water_splash_sm_002",
		"cs_utopia2_water_splash_sm_003",
		"cs_utopia2_water_splash_sm_004",
	},
	["scr_beat_on_the_run"] = {
		"ent_ray_grh_poop_decal_spawner_sp",
		"scr_beat_otr_fallin",
	},
	["scr_player_camp"] = {
		"scr_camp_shooting_stars",
		"scr_camp_shooting_stars_sp",
	},
	["scr_colon1"] = {
		"cs_cig_exhale_mouth",
	},
	["scr_crackpot"] = {
		"ent_anim_elec_sparks",
		"scr_crackpot_elec_flow",
		"scr_crackpot_rc_lightening",
		"scr_crackpot_rc_lightening_exp",
		"scr_crackpot_tesla_fail",
		"scr_crackpot_tesla_spark",
	},
	["scr_smuggler2"] = {
		"ent_amb_falling_debris",
		"exp_grd_smoke_post_small",
		"exp_smoke_trail",
		"muz_cannon_warship",
		"scr_smg2_boat_exp",
		"scr_smg2_boat_impact",
		"scr_smg2_fort_exp",
		"scr_smg2_fort_exp_cannon",
		"scr_smg2_fort_exp_debris",
	},
	["anm_animals"] = {
		"ent_anim_animal_bite_carcass",
		"ent_anim_animal_breath",
		"ent_anim_animal_graze",
		"ent_anim_animal_graze_berries",
		"ent_anim_animal_impact_dust",
		"ent_anim_animal_shit",
		"ent_anim_bear_dig_dirt",
		"ent_anim_beaver_eat_tree_chunk",
		"ent_anim_bull_hit",
		"ent_anim_bull_kick",
		"ent_anim_deer_graze",
		"ent_anim_deer_graze_grass",
		"ent_anim_dog_dig_dirt",
		"ent_anim_dog_water_drink_drips",
		"ent_anim_eat_leaves",
		"ent_anim_feathers_float",
		"ent_anim_feeding_horse_crumbs",
		"ent_anim_hen_peck",
		"ent_anim_horse_graze_bite",
		"ent_anim_horse_water_drink_drips",
		"ent_anim_pig_graze",
		"liquid_splash_pee",
	},
	["anm_explosion"] = {
		"ent_anim_cannonball_exp",
		"ent_anim_jbo1_int_exp",
		"exp_smoke_trail",
	},
	["scr_utopia1"] = {
		"scr_utopia1_donkey_smoke",
	},
	["scr_beat_rally"] = {
		"scr_beat_rally_cross_fire",
	},
	["cut_rprsn"] = {
		"cs_ped_breath_winter",
	},
	["anm_mud"] = {
		"cs_mud2_mud_splash_body",
		"cs_mud2_mud_splash_hand",
	},
	["anm_collision"] = {
		"ent_anim_bang_dust_joint",
		"ent_anim_bang_dust_limb",
		"ent_anim_bang_mud_joint",
		"ent_anim_bang_mud_limb",
		"ent_anim_bang_mud_soft_limb",
		"ent_anim_brk_door_lock",
		"ent_anim_dust_mud",
		"ent_anim_foot_gravel_stomp",
	},
	["anm_fire_dancers"] = {
		"ent_anim_fire_breathe",
	},
	["anm_gator"] = {
		"ent_anim_gator_blood_underwater",
		"ent_anim_gator_grapple_end",
		"ent_anim_gator_kill",
		"ent_anim_gator_sink",
		"ent_anim_gator_splash_triggered",
		"ent_anim_mob5_gator_blood_underwater",
		"scr_beat_corpse_water_bubble_spawn",
	},
	["scr_winter2"] = {
		"scr_winter2_dislodged_ice",
		"scr_winter2_snow_grab",
	},
	["scr_beat_bear_trap"] = {
		"scr_beat_bear_blood",
	},
	["cut_winter"] = {
		"cs_ped_breath_winter",
	},
	["anm_shows"] = {
		"ent_anim_magician_smoke",
	},
	["scr_rhodes"] = {
		"ent_amb_following_dust",
		"ent_anim_falling_dust",
		"exp_grd_smoke_post_small",
		"exp_smoke_trail",
		"scr_rho_bankwall_dust_cloud",
		"scr_rho_bankwall_exp",
	},
	["des_mud2"] = {
		"ent_dst_wood_splinter",
		"ent_ray_mud2_window_smash",
	},
	["scr_net_target_races"] = {
		"scr_net_target_destroy_burst",
		"scr_net_target_fire_ring_burst_mp",
	},
	["anm_work"] = {
		"ent_anim_ann_coal_leak",
		"ent_anim_broom_dust",
		"ent_anim_chop_wood",
		"ent_anim_cotton_dump",
		"ent_anim_dig_dirt",
		"ent_anim_dig_dirt_grave",
		"ent_anim_dig_dirt_grave_trail",
		"ent_anim_dig_dirt_surface",
		"ent_anim_dig_dirt_treasure",
		"ent_anim_dig_dirt_treasure_trail",
		"ent_anim_dig_mud_treasure",
		"ent_anim_dig_snow_treasure",
		"ent_anim_dig_snow_treasure_trail",
		"ent_anim_dig_treasure_pickup_dirt",
		"ent_anim_dig_treasure_pickup_hay",
		"ent_anim_dig_treasure_pickup_mud",
		"ent_anim_dig_treasure_pickup_snow",
		"ent_anim_disp_dust_waved",
		"ent_anim_dusty_hands",
		"ent_anim_gardener_plant",
		"ent_anim_grab_dirt",
		"ent_anim_hand_saw_wood",
		"ent_anim_hand_saw_wood_dir",
		"ent_anim_hay_pitchfork_pour",
		"ent_anim_hay_pitchfork_spear",
		"ent_anim_hay_pitchfork_toss",
		"ent_anim_hay_pitchfork_work",
		"ent_anim_hay_pitchfork_work_fast",
		"ent_anim_hay_pitchfork_work_finish",
		"ent_anim_haybale_pick_up",
		"ent_anim_hogtie_rope_brk",
		"ent_anim_pick_axe_rock_impact",
		"ent_anim_plane_wood",
		"ent_anim_plane_wood_rot",
		"ent_anim_sharp_weapon",
		"ent_anim_throw_chicken_feed",
		"ent_anim_water_cloth_squeeze_splash_spawned",
		"ent_anim_whittle_wood",
		"ent_anim_work_dust_large",
		"ent_anim_work_hammer",
		"ent_anim_work_pick_out",
	},
	["anm_wnt"] = {
		"ent_anim_foot_stomp_snow",
		"ent_anim_ped_breath_warm_hands",
		"ent_anim_snow_climb",
		"ent_anim_snow_landing",
	},
	["anm_injuredrider"] = {
		"ent_anim_arm_blood_saw",
	},
	["scr_net_dust"] = {
		"scr_amb_bridge_disturb_dust",
		"scr_mp_evil_pentagram_spawn",
		"scr_mp_evil_target_spawn",
		"scr_mp_target_spawn",
	},
	["scr_net_fire_smoke"] = {
		"scr_adv_terr_flag_blast",
		"scr_campfire_smoke_blast",
		"scr_mp_collect_pickup_smoke",
		"scr_mp_item_pickup_spawn",
	},
	["anm_crafting"] = {
		"ent_anim_bait_drop_herbs",
		"ent_anim_craft_pour_powder",
		"ent_anim_craft_root_chips",
		"ent_anim_crafting_animal_ctrl_herbs",
		"ent_anim_crafting_drop_bits",
		"ent_anim_crafting_root_bits",
		"ent_anim_dig_root_break",
		"ent_anim_flower_dust_leaves",
		"ent_anim_flower_gold_currant",
		"ent_anim_flower_yarrow",
		"ent_anim_flower_yarrow_red",
		"ent_anim_moonshine_brew_steam",
		"ent_anim_nat_pheromone",
		"ent_anim_nat_skunk_spray",
		"ent_anim_pluck_feathers",
		"ent_anim_spirit_ped_herb_drop",
		"ent_anim_spirit_ped_herb_drop_seated",
		"ent_anim_spirit_ped_herb_drop_squat",
	},
	["scr_dis_ligtn_trees"] = {
		"scr_crackpot_rc_lightening",
		"scr_crackpot_rc_lightening_exp",
	},
	["scr_discoverables"] = {
		"scr_disc_cave_explosion",
		"scr_disc_meteor_shower_streak",
	},
	["anm_blood"] = {
		"ent_anim_blood_arrow",
		"ent_anim_blood_cough",
		"ent_anim_blood_gen_eat_carcass",
		"ent_anim_blood_head_grab_deer",
		"ent_anim_blood_head_shot",
		"ent_anim_blood_knife_five_finger",
		"ent_anim_blood_knife_pull",
		"ent_anim_blood_maul_dir",
		"ent_anim_blood_maul_dir_100m",
		"ent_anim_blood_pig_eat_carcass",
		"ent_anim_blood_pig_eat_carcass_dir",
		"ent_anim_blood_rdown",
		"ent_anim_blood_skin_pull",
		"ent_anim_blood_spit",
		"ent_anim_blood_splash",
		"ent_anim_blood_splash_beak",
		"ent_anim_blood_spurt_small",
		"ent_anim_bloody_mouth_animal",
		"ent_anim_bloody_mouth_wolf",
		"ent_anim_bloody_mouth_wolf_med",
		"ent_anim_bloody_mouth_wolf_sml",
		"ent_anim_cough_blood",
		"ent_anim_mouth_hit_blood",
		"ent_anim_stab_blood",
		"ent_anim_stab_blood_drip_splash_sp",
		"ent_anim_suicide_blood_headshot",
		"ent_anim_throat_slit",
	},
	["anm_impacts"] = {
		"ent_anim_bale_impact_dust",
		"ent_anim_bottle_smash",
		"ent_anim_bul_hole_metal",
		"ent_anim_dust_cloud",
		"ent_anim_dynamite_cave",
		"ent_anim_falling_dust",
		"ent_anim_foot_sand_mud",
		"ent_anim_gen_linger_smoke",
		"ent_anim_glass_smash",
		"ent_anim_gua2_beach_collapse",
		"ent_anim_impact_dust",
		"ent_anim_impact_dustcloud",
		"ent_anim_impact_dustcloud_preload",
		"ent_anim_impact_train_cart_preload",
		"ent_anim_metal_impact_dust",
		"ent_anim_snow_dive",
		"ent_anim_window_smash_sma",
		"ent_anim_wood_impact_dust",
		"exp_smoke_trail",
	},
	["scr_beat_train_tracks"] = {
		"scr_beat_train_blood",
	},
	["scr_fussar2"] = {
		"scr_fus2_climbing_debris",
		"scr_sht_bear_trap",
	},
	["scr_generic"] = {
		"scr_leaves_descend",
	},
	["des_native3"] = {
		"ent_ray_native3_fence_break",
		"scr_ntvs3_exp_fortwall",
	},
	["scr_beat_animal_mauling"] = {
		"scr_beat_anml_blood",
	},
	["scr_braithwaites3"] = {
		"scr_brt3_window_smash",
	},
	["des_utopia2"] = {
		"ent_ray_utopia2_tree_fall_dust",
		"ent_ray_utp2_riverbed_exp",
		"exp_smoke_trail",
	},
	["anm_core"] = {
		"ent_anim_sht_fabric",
		"ent_anim_stomp_embers",
	},
	["scr_net_camp"] = {
		"scr_net_spirit_animal_fade_in",
		"scr_net_spirit_animal_fade_out",
		"scr_net_spirit_animal_fire_react",
	},
	["scr_native_son3"] = {
		"scr_ntvs3_exp_fortwall",
		"scr_ntvs3_noexp_fortwall",
	},
	["des_tree_fall"] = {
		"ent_ray_tree_fall_dust",
	},
	["scr_beat_voodoo_ritual"] = {
		"scr_beat_voodoo_blood",
		"sp_blood_drip_splash",
	},
	["scr_adv_sok"] = {
		"scr_adv_sok_checkpoint",
	},
	["scr_winter1"] = {
		"ent_amb_falling_debris",
		"ent_anim_falling_dust",
		"ent_ray_snow_impact",
		"exp_grd_smoke_post_small",
		"scr_win1_cabin_roof_fall_embers",
	},
	["des_rho_jail"] = {
		"ent_anim_rho_jailwall_linger_smoke",
		"ent_ray_rho_jailwall_exp",
		"exp_smoke_trail",
	},
	["scr_net_beat_egg_protector"] = {
		"scr_egg_break",
	},
	["scr_rcm_native2"] = {
		"exp_smoke_trail",
		"scr_natv2_derrick_exp",
	},
	["anm_skinning"] = {
		"ent_anim_skinning_bird_breast_break",
		"ent_anim_skinning_bird_meat_pull",
		"ent_anim_skinning_knife_cut",
		"ent_anim_skinning_knife_slice",
		"ent_anim_skinning_knife_stab",
		"ent_anim_skinning_skin_pull",
		"ent_anim_skinning_skin_pull_snake",
	},
	["scr_fussar1"] = {
		"liquid_splash_oil",
		"scr_fussar1_exp",
		"scr_fussar1_exp_roof",
		"scr_fussar1_exp_smaller",
		"scr_fussar1_impact_smoke",
		"scr_fussar1_leak_oil",
		"scr_fussar1_sb_dutch_01",
		"scr_fussar1_sb_dutch_02",
		"scr_fussar1_sb_long",
		"scr_fussar1_sb_long_br",
	},
	["anm_water"] = {
		"ent_amb_oil_drips_spawned",
		"ent_amb_water_drips_spawned",
		"ent_anim_bm_water_mist",
		"ent_anim_bm_water_scp",
		"ent_anim_boat_splash",
		"ent_anim_bucket_pour_through",
		"ent_anim_gua1_boat_splash",
		"ent_anim_mob5_dump_body_splash",
		"ent_anim_nts2_dive_water",
		"ent_anim_ped_hand_splash",
		"ent_anim_ped_wash_face",
		"ent_anim_ped_water_disturb",
		"ent_anim_ped_water_drink_splash",
		"ent_anim_ped_water_entry_splash",
		"ent_anim_ped_water_exit_splash",
		"ent_anim_ped_water_shake",
		"ent_anim_water_bucket_dump",
		"ent_anim_water_bucket_pour",
		"ent_anim_water_bucket_splash",
		"ent_anim_water_dive_splash",
		"ent_anim_water_drown_splash",
		"ent_anim_water_duck_eat_splash",
		"ent_anim_water_gold_pan_fling",
		"ent_anim_water_gold_pan_splash",
		"ent_anim_water_kettle_splash",
		"ent_anim_waterbucket_splash_spawned",
		"liquid_splash_water",
	},
	["scr_arch_jameson3"] = {
		"blood_stone_crusher_exp",
	},
}