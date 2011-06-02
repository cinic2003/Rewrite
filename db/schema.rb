# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110601084252) do

  create_table "ai_texts", :force => true do |t|
    t.string   "ai_type",    :limit => 15
    t.integer  "ai_id"
    t.string   "ai_txt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "archived_equips", :id => false, :force => true do |t|
    t.integer  "id",                 :default => 0, :null => false
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.datetime "deleted_at"
    t.integer  "duration"
    t.integer  "forge_level"
    t.boolean  "bind_with_player"
    t.string   "tip"
    t.integer  "superimposed_count"
    t.integer  "price_in_gold"
    t.integer  "job_id"
    t.integer  "price_in_coupon"
    t.integer  "repurchase_price"
    t.integer  "item_type_id"
    t.integer  "ground_icon_id"
    t.integer  "board_icon_id"
    t.integer  "body_type_id"
    t.integer  "enhancement_id"
    t.integer  "prerequisite_level", :default => 0
    t.string   "basic_ability1"
    t.string   "extended_ability1"
    t.string   "basic_ability2"
    t.string   "extended_ability2"
    t.integer  "rare_item_rate"
    t.integer  "epic_item_rate"
  end

  create_table "archived_fabaos", :id => false, :force => true do |t|
    t.integer  "id",                               :default => 0, :null => false
    t.integer  "board_icon_id"
    t.integer  "ground_icon_id"
    t.string   "effect_wuid",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.datetime "deleted_at"
    t.string   "title"
    t.integer  "price_to_sell"
    t.integer  "quality_level"
    t.integer  "price_to_buy"
    t.boolean  "bind_with_player"
    t.integer  "superimposed_count"
    t.integer  "prerequisite_level"
    t.integer  "job_id"
    t.integer  "price_in_store"
    t.string   "tip"
    t.integer  "enhancement_id"
  end

  create_table "archived_images", :id => false, :force => true do |t|
    t.integer  "id",                              :default => 0,     :null => false
    t.integer  "data_file_size"
    t.integer  "integer"
    t.string   "data_file_name",    :limit => 30
    t.string   "data_content_type", :limit => 10
    t.boolean  "ground_icon",                     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "archived_jobs", :id => false, :force => true do |t|
    t.integer  "id",                                 :default => 0, :null => false
    t.string   "title",                :limit => 15
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "name"
    t.integer  "defence_level"
    t.integer  "power_hit_point"
    t.integer  "luck_point"
    t.integer  "level"
    t.integer  "defence_rate"
    t.integer  "magic_restore_speed"
    t.integer  "attack_speed"
    t.integer  "move_speed"
    t.integer  "health_restore_speed"
    t.integer  "explode_point"
    t.integer  "job_id"
    t.integer  "power_hit_rate"
  end

  create_table "archived_monsters", :id => false, :force => true do |t|
    t.integer  "id",                            :default => 0, :null => false
    t.string   "name"
    t.integer  "monster_id"
    t.integer  "user_id"
    t.integer  "level"
    t.integer  "health_point"
    t.integer  "health_point_line_n"
    t.integer  "max_attack_point"
    t.integer  "min_attack_point"
    t.integer  "max_magic_attack_point"
    t.integer  "min_magic_attack_point"
    t.integer  "power_hit_rate"
    t.integer  "power_hit_point"
    t.integer  "move_speed"
    t.integer  "move_kind"
    t.integer  "attack_speed"
    t.integer  "injury_type"
    t.integer  "death_effect"
    t.integer  "base_bonus_rate"
    t.integer  "bonus_n"
    t.integer  "exp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "priority",                      :default => 2
    t.integer  "version"
    t.integer  "attack_dodge_rate"
    t.integer  "defence_level"
    t.integer  "magic_point"
    t.integer  "max_health_point"
    t.integer  "luck_point"
    t.integer  "max_magic_point"
    t.integer  "defence_rate"
    t.integer  "magic_restore_speed"
    t.integer  "health_restore_speed"
    t.integer  "explode_point"
    t.integer  "job_id"
    t.integer  "call_distance"
    t.integer  "guard_distance"
    t.integer  "yield_rate"
    t.string   "nick_name"
    t.datetime "deleted_at"
    t.text     "white_box"
    t.integer  "hit_rate"
    t.integer  "board_icon_id"
    t.integer  "magic_defence_point",           :default => 0
    t.integer  "defence_point",                 :default => 0
    t.integer  "refresh_interval"
    t.integer  "disappear_interval",            :default => 0
    t.integer  "min_magic_attack_point_weight"
    t.integer  "magic_defence_point_weight"
    t.integer  "defence_point_weight"
    t.integer  "health_restore_speed_weight"
    t.integer  "min_attack_point_weight"
    t.integer  "max_health_point_weight"
    t.integer  "max_magic_attack_point_weight"
    t.integer  "max_attack_point_weight"
  end

  create_table "archived_motions", :id => false, :force => true do |t|
    t.integer  "id",                       :default => 0, :null => false
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "slug",        :limit => 3
  end

  create_table "archived_prescriptions", :id => false, :force => true do |t|
    t.integer  "id",                :default => 0, :null => false
    t.string   "title"
    t.integer  "prop_id"
    t.integer  "max_level"
    t.integer  "furnace_loss"
    t.integer  "coin_consumption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.datetime "deleted_at"
    t.integer  "prescription_type"
    t.integer  "product_id"
  end

  create_table "archived_props", :id => false, :force => true do |t|
    t.integer  "id",                 :default => 0,     :null => false
    t.string   "name"
    t.string   "tip"
    t.integer  "superimposed_count"
    t.integer  "level_effect"
    t.integer  "duration"
    t.integer  "price_in_gold"
    t.integer  "payment_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer  "recycling_price"
    t.integer  "price_in_coupon"
    t.integer  "embattlable"
    t.integer  "prerequisite_level"
    t.integer  "cooling_time"
    t.text     "white_box"
    t.integer  "item_type_id"
    t.integer  "ground_icon_id"
    t.integer  "board_icon_id"
    t.boolean  "is_pseudo",          :default => false
    t.boolean  "package_prop",       :default => false
    t.integer  "min_obtain_level"
    t.integer  "min_observe_level"
    t.integer  "min_consume_level"
    t.string   "nick_name"
  end

  create_table "archived_ruolos", :id => false, :force => true do |t|
    t.integer  "id",                             :default => 0,  :null => false
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "type",             :limit => 20
    t.binary   "conversation"
    t.string   "npc_type",         :limit => 1,  :default => ""
    t.datetime "deleted_at"
    t.integer  "npc_job_type"
    t.datetime "open_at"
    t.datetime "close_at"
    t.integer  "refresh_interval"
    t.string   "miniatura_wid",    :limit => 11
    t.string   "nick_name",        :limit => 15
  end

  create_table "archived_scenes", :id => false, :force => true do |t|
    t.integer  "id",                                        :default => 0,    :null => false
    t.text     "design_requirement"
    t.text     "scene_description"
    t.text     "design_idea"
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid",                        :limit => 36
    t.integer  "version"
    t.integer  "width"
    t.integer  "height"
    t.binary   "block_data"
    t.integer  "last_updated_by"
    t.integer  "priority",                                  :default => 2
    t.datetime "deleted_at"
    t.string   "nick_name"
    t.boolean  "able_to_pk",                                :default => true
    t.integer  "rb_begin_x"
    t.integer  "rb_begin_y"
    t.integer  "rb_end_x"
    t.integer  "rb_end_y"
    t.binary   "alpha_data"
    t.float    "hardlight",                                 :default => 0.0
    t.binary   "soul_compass_data"
    t.string   "bgm_wid",                     :limit => 11
    t.string   "preview_wuid",                :limit => 11
    t.integer  "entrance_x"
    t.integer  "entrance_y"
    t.integer  "exit_x"
    t.integer  "exit_y"
    t.boolean  "is_multi_chael_msg_optimize",               :default => true
    t.integer  "weather_type",                              :default => 0
    t.integer  "weather_percent"
  end

  create_table "archived_skills", :id => false, :force => true do |t|
    t.integer  "id",                                  :default => 0,  :null => false
    t.string   "title"
    t.text     "description"
    t.integer  "cast_preparation"
    t.boolean  "continuous_attack"
    t.integer  "cd_interval"
    t.integer  "prerequisite_prop_id"
    t.integer  "skill_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.datetime "deleted_at"
    t.string   "effect_wuid",          :limit => 100
    t.integer  "board_icon_id"
    t.string   "wink_effect",          :limit => 100
    t.string   "intonate_effect",      :limit => 100
    t.integer  "motion_id",                           :default => 28
    t.integer  "effect_type"
    t.integer  "effect_play_type"
    t.integer  "skill_affect_type"
    t.integer  "duration",                            :default => -1
  end

  create_table "archived_tasks", :id => false, :force => true do |t|
    t.integer  "id",                   :default => 0,     :null => false
    t.integer  "category"
    t.string   "title"
    t.integer  "prerequisite_level",   :default => 0
    t.integer  "award_coin",           :default => 0
    t.integer  "award_experience",     :default => 0
    t.integer  "award_spirit",         :default => 0
    t.text     "description"
    t.text     "objective"
    t.integer  "scene_id"
    t.integer  "assignable_count",     :default => 0
    t.integer  "time_limit",           :default => 0
    t.integer  "user_id"
    t.integer  "last_updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer  "task_level"
    t.integer  "prerequisite_task_id"
    t.integer  "triger_type"
    t.integer  "triger_prop_id"
    t.integer  "commit_type"
    t.integer  "receive_npc_id"
    t.integer  "commit_npc_id"
    t.boolean  "auto_popup",           :default => false
    t.boolean  "able_to_give_up",      :default => false
    t.integer  "award_yuanbao",        :default => 0
    t.integer  "customize_index"
  end

  create_table "archived_users", :id => false, :force => true do |t|
    t.integer  "id",                  :default => 0, :null => false
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "deleted_at"
  end

  create_table "arter_flow_objects", :force => true do |t|
    t.integer  "afoable_id"
    t.string   "afoable_type"
    t.boolean  "design"
    t.integer  "design_updater_id"
    t.boolean  "model"
    t.integer  "model_updater_id"
    t.boolean  "map"
    t.integer  "map_updater_id"
    t.boolean  "rig"
    t.integer  "rig_updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "attachings_count",  :default => 0
    t.datetime "created_at"
    t.datetime "data_updated_at"
  end

  create_table "attachings", :force => true do |t|
    t.integer  "attachable_id"
    t.integer  "asset_id"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachings", ["asset_id"], :name => "index_attachings_on_asset_id"
  add_index "attachings", ["attachable_id"], :name => "index_attachings_on_attachable_id"

  create_table "audios", :force => true do |t|
    t.string   "prefix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "body_types", :force => true do |t|
    t.integer  "slug"
    t.string   "name",               :limit => 20
    t.string   "description",        :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "default_equip_wuid", :limit => 11
  end

  create_table "buffs", :force => true do |t|
    t.string   "title",         :limit => 10
    t.integer  "duration"
    t.text     "description"
    t.integer  "board_icon_id"
    t.string   "effect_wuid",   :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "white_box"
    t.integer  "buffable_id"
    t.string   "buffable_type", :limit => 25
  end

  create_table "call_ais", :force => true do |t|
    t.string   "creature_type",      :limit => 15
    t.integer  "creature_id"
    t.integer  "reachable_distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chase_ais", :force => true do |t|
    t.string   "creature_type"
    t.integer  "creature_id"
    t.integer  "max_distance"
    t.integer  "born_point_threshold"
    t.integer  "text_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_errors", :force => true do |t|
    t.string   "ip",         :limit => 15
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conversation_details", :force => true do |t|
    t.integer  "task_step_id"
    t.integer  "npc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creature3d_posters", :force => true do |t|
    t.integer  "creature_id"
    t.integer  "motion_id"
    t.integer  "orientation"
    t.string   "creature_type"
    t.integer  "poster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creature_posters", :force => true do |t|
    t.integer  "creature_id"
    t.integer  "motion_id"
    t.integer  "orientation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "creature_type", :limit => 20
    t.integer  "poster_id"
  end

  create_table "dicts", :force => true do |t|
    t.string   "name",       :limit => 15
    t.string   "slug",       :limit => 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dicts", ["slug"], :name => "slug_idx"

  create_table "enhancement_templates", :force => true do |t|
    t.integer  "level"
    t.integer  "coin_consumption"
    t.float    "success_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "enhancement_id"
    t.integer  "time",             :default => 0
  end

  create_table "enhancements", :force => true do |t|
    t.string   "title"
    t.string   "description", :limit => 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equip_versions", :force => true do |t|
    t.integer  "equip_id"
    t.integer  "version"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "duration"
    t.integer  "forge_level"
    t.boolean  "bind_with_player"
    t.string   "tip"
    t.integer  "superimposed_count"
    t.integer  "price_in_gold"
    t.integer  "job_id"
    t.integer  "price_in_coupon"
    t.integer  "repurchase_price"
    t.integer  "item_type_id"
    t.integer  "ground_icon_id"
    t.integer  "board_icon_id"
    t.integer  "body_type_id"
    t.integer  "enhancement_id"
    t.integer  "prerequisite_level", :default => 0
    t.string   "basic_ability1"
    t.string   "extended_ability1"
    t.string   "basic_ability2"
    t.string   "extended_ability2"
    t.integer  "rare_item_rate"
    t.integer  "epic_item_rate"
  end

  add_index "equip_versions", ["equip_id"], :name => "index_equip_versions_on_equip_id"

  create_table "equips", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.integer  "duration"
    t.integer  "forge_level"
    t.boolean  "bind_with_player"
    t.string   "tip"
    t.integer  "superimposed_count"
    t.integer  "price_in_gold"
    t.integer  "job_id"
    t.integer  "price_in_coupon"
    t.integer  "repurchase_price"
    t.integer  "item_type_id"
    t.integer  "ground_icon_id"
    t.integer  "board_icon_id"
    t.integer  "body_type_id"
    t.integer  "enhancement_id"
    t.integer  "prerequisite_level", :default => 0
    t.string   "basic_ability1"
    t.string   "extended_ability1"
    t.string   "basic_ability2"
    t.string   "extended_ability2"
    t.integer  "rare_item_rate"
    t.integer  "epic_item_rate"
  end

  create_table "escort_details", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "monster_id"
    t.integer  "x"
    t.integer  "y"
    t.integer  "task_step_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fabao_versions", :force => true do |t|
    t.integer  "fabao_id"
    t.integer  "version"
    t.integer  "board_icon_id"
    t.integer  "ground_icon_id"
    t.string   "effect_wuid",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.integer  "price_to_sell"
    t.integer  "quality_level"
    t.integer  "price_to_buy"
    t.boolean  "bind_with_player"
    t.integer  "superimposed_count"
    t.integer  "prerequisite_level"
    t.integer  "job_id"
    t.integer  "price_in_store"
    t.string   "tip"
    t.integer  "enhancement_id"
  end

  add_index "fabao_versions", ["fabao_id"], :name => "index_fabao_versions_on_fabao_id"

  create_table "fabaos", :force => true do |t|
    t.integer  "board_icon_id"
    t.integer  "ground_icon_id"
    t.string   "effect_wuid",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.string   "title"
    t.integer  "price_to_sell"
    t.integer  "quality_level"
    t.integer  "price_to_buy"
    t.boolean  "bind_with_player"
    t.integer  "superimposed_count"
    t.integer  "prerequisite_level"
    t.integer  "job_id"
    t.integer  "price_in_store"
    t.string   "tip"
    t.integer  "enhancement_id"
  end

  create_table "fb_level_up_templates", :force => true do |t|
    t.integer  "level"
    t.integer  "fabao_id"
    t.string   "tip"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "max_sprit_power"
    t.integer  "current_sprit_power"
  end

  create_table "game_designer_csvs", :force => true do |t|
    t.string   "csv_file_name"
    t.string   "csv_content_type"
    t.integer  "csv_file_size"
    t.datetime "csv_updated_at"
    t.integer  "csv_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_levels", :force => true do |t|
    t.string   "name"
    t.integer  "exhaust_hp_count"
    t.integer  "prerequisite_level"
    t.integer  "challenge_count_per_day"
    t.text     "prerequirments"
    t.text     "victory_conditions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "scene_info"
    t.text     "white_box"
    t.string   "probability_weighted",    :limit => 20
    t.integer  "level_type",                            :default => 0
  end

  create_table "hatred_ais", :force => true do |t|
    t.integer  "attack_priority"
    t.string   "creature_type",            :limit => 15
    t.string   "creature_id"
    t.integer  "dynamic_target_threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_shadows", :force => true do |t|
    t.string   "image_host_type", :limit => 15
    t.string   "string",          :limit => 15
    t.integer  "image_host_id"
    t.integer  "integer"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.integer  "data_file_size"
    t.integer  "integer"
    t.string   "data_file_name",    :limit => 30
    t.string   "data_content_type", :limit => 10
    t.boolean  "ground_icon",                     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_types", :force => true do |t|
    t.string   "title",           :limit => 10
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.string   "position_orders", :limit => 40
  end

  add_index "item_types", ["title"], :name => "title_idx"

  create_table "job_levels", :force => true do |t|
    t.integer  "max_health_point"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attack_dodge_rate"
    t.integer  "hit_rate"
    t.integer  "level"
    t.integer  "magic_defence_point"
    t.integer  "max_magic_point"
    t.integer  "min_magic_attack_point"
    t.integer  "min_attack_point"
    t.integer  "job_id"
    t.integer  "max_attack_point"
    t.integer  "defence_point"
    t.integer  "max_magic_attack_point"
  end

  create_table "jobs", :force => true do |t|
    t.string   "title",                :limit => 15
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "defence_level"
    t.integer  "power_hit_point"
    t.integer  "luck_point"
    t.integer  "level"
    t.integer  "defence_rate"
    t.integer  "magic_restore_speed"
    t.integer  "attack_speed"
    t.integer  "move_speed"
    t.integer  "health_restore_speed"
    t.integer  "explode_point"
    t.integer  "job_id"
    t.integer  "power_hit_rate"
  end

  create_table "level_up_templates", :force => true do |t|
    t.integer  "level"
    t.integer  "equip_id"
    t.string   "add_hit_rate",               :limit => 10
    t.string   "add_magic_restore_speed",    :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "add_attack_dodge_rate",      :limit => 10
    t.string   "add_defence_level",          :limit => 10
    t.string   "add_luck_point",             :limit => 10
    t.string   "add_defence_rate",           :limit => 10
    t.string   "add_min_attack_point",       :limit => 10
    t.string   "add_max_magic_point",        :limit => 10
    t.string   "add_max_attack_point",       :limit => 10
    t.string   "add_max_health_point",       :limit => 10
    t.string   "add_max_magic_attack_point", :limit => 10
    t.string   "add_min_magic_attack_point", :limit => 10
    t.string   "add_power_hit_level",        :limit => 10
    t.string   "add_power_hit_rate",         :limit => 10
    t.string   "add_health_restore_speed",   :limit => 10
    t.string   "add_defence_point",          :limit => 10
    t.string   "add_magic_defence_point",    :limit => 10
  end

  create_table "mask_tiles", :force => true do |t|
    t.string   "md5",        :limit => 32
    t.string   "uuid",       :limit => 36
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "miniaturas", :force => true do |t|
    t.integer  "miniatura_host_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "miniatura_host_type", :limit => 20
  end

  create_table "monster_scenes", :force => true do |t|
    t.integer  "monster_id"
    t.integer  "scene_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monster_versions", :force => true do |t|
    t.integer  "origin_monster_id"
    t.integer  "version"
    t.string   "name"
    t.integer  "monster_id"
    t.integer  "user_id"
    t.integer  "level"
    t.integer  "health_point"
    t.integer  "health_point_line_n"
    t.integer  "max_attack_point"
    t.integer  "min_attack_point"
    t.integer  "max_magic_attack_point"
    t.integer  "min_magic_attack_point"
    t.integer  "power_hit_rate"
    t.integer  "power_hit_point"
    t.integer  "move_speed"
    t.integer  "move_step_n"
    t.integer  "move_kind"
    t.integer  "attack_speed"
    t.integer  "injury_type"
    t.integer  "death_effect"
    t.integer  "base_bonus_rate"
    t.integer  "bonus_n"
    t.integer  "exp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "priority",                      :default => 2
    t.text     "ai_description"
    t.integer  "poison_attack"
    t.integer  "attack_dodge_rate"
    t.integer  "defence_level"
    t.integer  "magic_point"
    t.integer  "max_health_point"
    t.integer  "luck_point"
    t.integer  "poison_defence"
    t.integer  "max_magic_point"
    t.integer  "defence_rate"
    t.integer  "magic_restore_speed"
    t.integer  "fire_defence"
    t.integer  "health_restore_speed"
    t.integer  "explode_point"
    t.integer  "job_id"
    t.integer  "fire_attack"
    t.integer  "call_distance"
    t.integer  "escape_h_p_rate"
    t.integer  "hunt_distance"
    t.integer  "guard_distance"
    t.integer  "escape_distance"
    t.integer  "yield_rate"
    t.string   "nick_name"
    t.text     "white_box"
    t.integer  "hit_rate"
    t.integer  "board_icon_id"
    t.integer  "magic_defence_point",           :default => 0
    t.integer  "defence_point",                 :default => 0
    t.integer  "refresh_interval"
    t.integer  "disappear_interval",            :default => 0
    t.integer  "min_magic_attack_point_weight"
    t.integer  "magic_defence_point_weight"
    t.integer  "defence_point_weight"
    t.integer  "health_restore_speed_weight"
    t.integer  "min_attack_point_weight"
    t.integer  "max_health_point_weight"
    t.integer  "max_magic_attack_point_weight"
    t.integer  "max_attack_point_weight"
  end

  add_index "monster_versions", ["origin_monster_id"], :name => "index_monster_versions_on_origin_monster_id"

  create_table "monsters", :force => true do |t|
    t.string   "name"
    t.integer  "monster_id"
    t.integer  "user_id"
    t.integer  "level"
    t.integer  "health_point"
    t.integer  "health_point_line_n"
    t.integer  "max_attack_point"
    t.integer  "min_attack_point"
    t.integer  "max_magic_attack_point"
    t.integer  "min_magic_attack_point"
    t.integer  "power_hit_rate"
    t.integer  "power_hit_point"
    t.integer  "move_speed"
    t.integer  "move_kind"
    t.integer  "attack_speed"
    t.integer  "injury_type"
    t.integer  "death_effect"
    t.integer  "base_bonus_rate"
    t.integer  "bonus_n"
    t.integer  "exp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "priority",                      :default => 2
    t.integer  "version"
    t.integer  "attack_dodge_rate"
    t.integer  "defence_level"
    t.integer  "magic_point"
    t.integer  "max_health_point"
    t.integer  "luck_point"
    t.integer  "max_magic_point"
    t.integer  "defence_rate"
    t.integer  "magic_restore_speed"
    t.integer  "health_restore_speed"
    t.integer  "explode_point"
    t.integer  "job_id"
    t.integer  "call_distance"
    t.integer  "guard_distance"
    t.integer  "yield_rate"
    t.string   "nick_name"
    t.text     "white_box"
    t.integer  "hit_rate"
    t.integer  "board_icon_id"
    t.integer  "magic_defence_point",           :default => 0
    t.integer  "defence_point",                 :default => 0
    t.integer  "refresh_interval"
    t.integer  "disappear_interval",            :default => 0
    t.integer  "min_magic_attack_point_weight"
    t.integer  "magic_defence_point_weight"
    t.integer  "defence_point_weight"
    t.integer  "health_restore_speed_weight"
    t.integer  "min_attack_point_weight"
    t.integer  "max_health_point_weight"
    t.integer  "max_magic_attack_point_weight"
    t.integer  "max_attack_point_weight"
  end

  create_table "motions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",        :limit => 3
  end

  add_index "motions", ["slug"], :name => "slug_idx"

  create_table "npc_scenes", :force => true do |t|
    t.integer  "npc_id"
    t.integer  "scene_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operation_details", :force => true do |t|
    t.integer  "task_step_id"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ornament_scenes", :force => true do |t|
    t.integer  "ornament_id"
    t.integer  "scene_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "width"
    t.integer  "height"
    t.integer  "scalex",      :default => 1
    t.integer  "layer",       :default => 2
  end

  create_table "ornament_scenes_tmp", :force => true do |t|
    t.integer  "ornament_id"
    t.integer  "scene_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "width"
    t.integer  "height"
    t.integer  "scalex",      :default => 1
    t.integer  "layer",       :default => 2
  end

  create_table "ornaments", :force => true do |t|
    t.string   "preview_prefix"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "hide",           :default => false
    t.string   "play_script"
  end

  add_index "ornaments", ["preview_prefix"], :name => "prefix_index"

  create_table "patrol_ais", :force => true do |t|
    t.integer  "patrol_scope"
    t.integer  "patrol_interval"
    t.string   "creature_type",   :limit => 15
    t.integer  "creature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "play_scripts", :force => true do |t|
    t.string   "creature_type", :limit => 20
    t.integer  "creature_id"
    t.integer  "motion_id"
    t.string   "script",                      :default => ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_levels", :force => true do |t|
    t.integer  "level"
    t.integer  "stage"
    t.integer  "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ploymorphic_props", :force => true do |t|
    t.string   "propable_type",       :limit => 30
    t.integer  "propable_id"
    t.integer  "prop_id"
    t.integer  "props_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "yield_rate"
    t.boolean  "task_oriented",                     :default => false
    t.boolean  "is_baodifu_prop",                   :default => false
    t.boolean  "is_shuangbeifu_prop",               :default => false
  end

  create_table "polymorphic_monsters", :force => true do |t|
    t.string   "monsterable_type", :limit => 15
    t.integer  "monsterable_id"
    t.integer  "monster_id"
    t.integer  "monsters_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polymorphic_skills", :force => true do |t|
    t.string   "skillable_type"
    t.integer  "skillable_id"
    t.integer  "yield_rate"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portals", :force => true do |t|
    t.string   "name"
    t.integer  "scene_id"
    t.integer  "to"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid",       :limit => 36
    t.integer  "dst_x_axis"
    t.integer  "dst_y_axis"
    t.integer  "x_axis"
    t.integer  "y_axis"
    t.string   "logo_wuid",  :limit => 15
  end

  create_table "posters", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "md5",        :limit => 32
  end

  create_table "prescription_level_up_templates", :force => true do |t|
    t.integer  "prescription_id"
    t.integer  "reaction_time"
    t.float    "max_failure_probability"
    t.float    "min_failure_probability"
    t.integer  "yield_count"
    t.float    "max_yield_rate"
    t.float    "min_yield_rate"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prescription_versions", :force => true do |t|
    t.integer  "prescription_id"
    t.integer  "version"
    t.string   "title"
    t.integer  "prop_id"
    t.integer  "max_level"
    t.integer  "furnace_loss"
    t.integer  "coin_consumption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prescription_type"
    t.integer  "product_id"
  end

  add_index "prescription_versions", ["prescription_id"], :name => "index_prescription_versions_on_prescription_id"

  create_table "prescriptions", :force => true do |t|
    t.string   "title"
    t.integer  "prop_id"
    t.integer  "max_level"
    t.integer  "furnace_loss"
    t.integer  "coin_consumption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.integer  "prescription_type"
    t.integer  "product_id"
  end

  create_table "prop_level_up_templates", :force => true do |t|
    t.integer  "prop_id"
    t.integer  "level"
    t.float    "probability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "props", :force => true do |t|
    t.string   "name"
    t.string   "tip"
    t.integer  "superimposed_count"
    t.integer  "level_effect"
    t.integer  "duration"
    t.integer  "price_in_gold"
    t.integer  "payment_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recycling_price"
    t.integer  "price_in_coupon"
    t.integer  "embattlable"
    t.integer  "prerequisite_level"
    t.integer  "cooling_time"
    t.text     "white_box"
    t.integer  "item_type_id"
    t.integer  "ground_icon_id"
    t.integer  "board_icon_id"
    t.boolean  "is_pseudo",          :default => false
    t.boolean  "package_prop",       :default => false
    t.integer  "min_obtain_level"
    t.integer  "min_observe_level"
    t.integer  "min_consume_level"
    t.string   "nick_name"
  end

  create_table "pseudo_props", :force => true do |t|
    t.integer  "prop_id"
    t.integer  "prop_count"
    t.integer  "pseudo_prop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id", "user_id"], :name => "roles_users_idx"

  create_table "runaway_ais", :force => true do |t|
    t.integer  "hp_threshold"
    t.integer  "max_distance"
    t.string   "creature_type", :limit => 15
    t.integer  "creature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "text_rate"
  end

  create_table "ruolos", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "type",             :limit => 20
    t.binary   "conversation"
    t.string   "npc_type",         :limit => 1,  :default => ""
    t.integer  "npc_job_type"
    t.datetime "open_at"
    t.datetime "close_at"
    t.integer  "refresh_interval"
    t.string   "miniatura_wid",    :limit => 11
    t.string   "nick_name",        :limit => 15
  end

  add_index "ruolos", ["title"], :name => "ruolo_title_idx"

  create_table "scene_mask_tiles", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "mask_tile_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scene_tiles", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "tile_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scene_versions", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "version"
    t.text     "design_requirement"
    t.text     "scene_description"
    t.text     "design_idea"
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid",                        :limit => 36
    t.integer  "width"
    t.integer  "height"
    t.text     "block_data"
    t.integer  "last_updated_by"
    t.integer  "priority"
    t.string   "nick_name"
    t.integer  "rb_begin_x"
    t.integer  "rb_begin_y"
    t.integer  "rb_end_x"
    t.integer  "rb_end_y"
    t.boolean  "able_to_pk",                                :default => true
    t.binary   "alpha_data"
    t.float    "hardlight",                                 :default => 0.0
    t.binary   "soul_compass_data"
    t.string   "bgm_wid",                     :limit => 11
    t.string   "preview_wuid",                :limit => 11
    t.integer  "entrance_x"
    t.integer  "entrance_y"
    t.integer  "exit_x"
    t.integer  "exit_y"
    t.boolean  "is_multi_chael_msg_optimize",               :default => true
    t.integer  "weather_type",                              :default => 0
    t.integer  "weather_percent"
  end

  add_index "scene_versions", ["scene_id"], :name => "index_scene_versions_on_scene_id"

  create_table "scenes", :force => true do |t|
    t.text     "design_requirement"
    t.text     "scene_description"
    t.text     "design_idea"
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid",                        :limit => 36
    t.integer  "version"
    t.integer  "width"
    t.integer  "height"
    t.binary   "block_data"
    t.integer  "last_updated_by"
    t.integer  "priority",                                  :default => 2
    t.string   "nick_name"
    t.boolean  "able_to_pk",                                :default => true
    t.integer  "rb_begin_x"
    t.integer  "rb_begin_y"
    t.integer  "rb_end_x"
    t.integer  "rb_end_y"
    t.binary   "alpha_data"
    t.float    "hardlight",                                 :default => 0.0
    t.binary   "soul_compass_data"
    t.string   "bgm_wid",                     :limit => 11
    t.string   "preview_wuid",                :limit => 11
    t.integer  "entrance_x"
    t.integer  "entrance_y"
    t.integer  "exit_x"
    t.integer  "exit_y"
    t.boolean  "is_multi_chael_msg_optimize",               :default => true
    t.integer  "weather_type",                              :default => 0
    t.integer  "weather_percent"
  end

  create_table "skill_level_up_templates", :force => true do |t|
    t.integer  "mp"
    t.integer  "hp"
    t.integer  "sprit"
    t.integer  "effect_scope"
    t.integer  "attack_distance"
    t.integer  "prerequisite_level"
    t.integer  "level"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tip"
  end

  create_table "skill_types", :force => true do |t|
    t.string   "title",      :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skill_types", ["title"], :name => "title_idx"

  create_table "skill_versions", :force => true do |t|
    t.integer  "skill_id"
    t.integer  "version"
    t.string   "title"
    t.text     "description"
    t.integer  "cast_preparation"
    t.boolean  "continuous_attack"
    t.integer  "cd_interval"
    t.integer  "prerequisite_prop_id"
    t.integer  "skill_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "effect_wuid",          :limit => 100
    t.integer  "board_icon_id"
    t.string   "wink_effect",          :limit => 100
    t.string   "intonate_effect",      :limit => 100
    t.integer  "motion_id",                           :default => 28
    t.integer  "effect_type"
    t.integer  "effect_play_type"
    t.integer  "skill_affect_type"
    t.integer  "duration",                            :default => -1
  end

  add_index "skill_versions", ["skill_id"], :name => "index_skill_versions_on_skill_id"

  create_table "skills", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "cast_preparation"
    t.boolean  "continuous_attack"
    t.integer  "cd_interval"
    t.integer  "prerequisite_prop_id"
    t.integer  "skill_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
    t.string   "effect_wuid",          :limit => 100
    t.integer  "board_icon_id"
    t.string   "wink_effect",          :limit => 100
    t.string   "intonate_effect",      :limit => 100
    t.integer  "motion_id",                           :default => 28
    t.integer  "effect_type"
    t.integer  "effect_play_type"
    t.integer  "skill_affect_type"
    t.integer  "duration",                            :default => -1
  end

  create_table "slave_versions", :force => true do |t|
    t.integer  "slave_id"
    t.integer  "version"
    t.integer  "level"
    t.integer  "max_reclamation_count"
    t.integer  "award_exp"
    t.integer  "energy_value"
    t.integer  "sprit_value"
    t.integer  "herb_level"
    t.integer  "jade_count"
    t.integer  "coin_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "slave_versions", ["slave_id"], :name => "index_slave_versions_on_slave_id"

  create_table "slaves", :force => true do |t|
    t.integer  "level"
    t.integer  "max_reclamation_count"
    t.integer  "award_exp"
    t.integer  "energy_value"
    t.integer  "sprit_value"
    t.integer  "herb_level"
    t.integer  "jade_count"
    t.integer  "coin_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
  end

  create_table "sprit_spots", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], :name => "tgname_idx"

  create_table "task_awards", :force => true do |t|
    t.integer  "task_id"
    t.integer  "player_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_steps", :force => true do |t|
    t.integer  "step"
    t.integer  "step_type"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "step_index",  :default => 1
    t.text     "description"
  end

  create_table "tasks", :force => true do |t|
    t.integer  "category"
    t.string   "title"
    t.integer  "prerequisite_level",   :default => 0
    t.integer  "award_coin",           :default => 0
    t.integer  "award_experience",     :default => 0
    t.integer  "award_spirit",         :default => 0
    t.text     "description"
    t.text     "objective"
    t.integer  "scene_id"
    t.integer  "assignable_count",     :default => 0
    t.integer  "time_limit",           :default => 0
    t.integer  "user_id"
    t.integer  "last_updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_level"
    t.integer  "prerequisite_task_id"
    t.integer  "triger_type"
    t.integer  "triger_prop_id"
    t.integer  "commit_type"
    t.integer  "receive_npc_id"
    t.integer  "commit_npc_id"
    t.boolean  "auto_popup",           :default => false
    t.boolean  "able_to_give_up",      :default => false
    t.integer  "award_yuanbao",        :default => 0
    t.integer  "customize_index"
  end

  create_table "tiles", :force => true do |t|
    t.string   "md5",            :limit => 32
    t.string   "uuid",           :limit => 36
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "collision_data"
  end

  create_table "tradable_objects", :force => true do |t|
    t.integer  "trade_type"
    t.integer  "objects_count"
    t.integer  "npc_id"
    t.float    "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prop_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.binary   "content"
    t.string   "ip"
    t.integer  "scene_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wuids", :force => true do |t|
    t.integer  "wuidable_id"
    t.string   "wuidable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rand_token",    :limit => 11
  end

  add_index "wuids", ["rand_token"], :name => "wuid_idx"
  add_index "wuids", ["wuidable_type", "wuidable_id"], :name => "wuidable_idx"

end
