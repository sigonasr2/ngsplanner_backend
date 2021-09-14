CREATE TABLE "food_mult" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "amount" int,
  "potency" float,
  "pp" int,
  "dmg_res" float,
  "hp" float,
  "pp_consumption" float,
  "pp_recovery" float,
  "weak_point_dmg" float,
  "hp_recovery" float
);

CREATE TABLE "food" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "description" text,
  "icon" text,
  "potency" boolean,
  "pp" boolean,
  "dmg_res" boolean,
  "hp" boolean,
  "pp_consumption" boolean,
  "pp_recovery" boolean,
  "weak_point_dmg" boolean,
  "hp_recovery" boolean,
  "popularity" int,
  "editors_choice" int,
  "rarity" int,
  "food_type" text
);

CREATE TABLE "class" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "icon" text
);

CREATE TABLE "class_weapon_type_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "class_id" int,
  "weapon_type_id" int
);

CREATE TABLE "class_level_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "class_id" int,
  "level" int,
  "hp" int,
  "atk" int,
  "def" int
);

CREATE TABLE "weapon" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "rarity" int,
  "level_req" int,
  "atk" int,
  "potential_id" int,
  "variance" float,
  "base_affix_slots" int,
  "drop_info" text,
  "pb_gauge_build" float,
  "icon" text
);

CREATE TABLE "weapon_type" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "shorthand" text,
  "icon" text,
  "dmg_type" int
);

CREATE TABLE "potential" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "icon" text
);

CREATE TABLE "potential_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "potential_id" int,
  "level" int,
  "mel_dmg" float,
  "rng_dmg" float,
  "tec_dmg" float,
  "crit_rate" float,
  "crit_dmg" float,
  "pp_cost_reduction" float,
  "active_pp_recovery" float,
  "natural_pp_recovery" float,
  "dmg_res" float,
  "all_down_res" float,
  "burn_res" float,
  "freeze_res" float,
  "blind_res" float,
  "shock_res" float,
  "panic_res" float,
  "poison_res" float,
  "battle_power_value" int,
  "pb_gauge_build" float,
  "description" text
);

CREATE TABLE "armor" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "rarity" int,
  "level_req" int,
  "def" int,
  "hp" int,
  "pp" int,
  "mel_dmg" float,
  "rng_dmg" float,
  "tec_dmg" float,
  "crit_rate" float,
  "crit_dmg" float,
  "pp_cost_reduction" float,
  "active_pp_recovery" float,
  "natural_pp_recovery" text,
  "dmg_res" float,
  "all_down_res" float,
  "burn_res" float,
  "freeze_res" float,
  "blind_res" float,
  "shock_res" float,
  "panic_res" float,
  "poison_res" float,
  "slot" int,
  "battle_power_value" float,
  "icon" text,
  "popularity" int,
  "editors_choice" int
);

CREATE TABLE "augment" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "augment_type_id" int,
  "name" text,
  "variance" float,
  "hp" int,
  "pp" int,
  "mel_dmg" float,
  "rng_dmg" float,
  "tec_dmg" float,
  "crit_rate" float,
  "crit_dmg" float,
  "pp_cost_reduction" float,
  "active_pp_recovery" float,
  "natural_pp_recovery" float,
  "dmg_res" float,
  "affix_success_rate" float,
  "all_down_res" float,
  "burn_res" float,
  "freeze_res" float,
  "blind_res" float,
  "shock_res" float,
  "panic_res" float,
  "poison_res" float,
  "battle_power_value" int,
  "pb_gauge_build" float,
  "popularity" int,
  "editors_choice" int,
  "element_id" int,
  "icon" text
);

CREATE TABLE "skill" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "skill_type_id" int,
  "icon" text
);

CREATE TABLE "skill_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "skill_id" int,
  "level" int,
  "variance" float,
  "mel_dmg" float,
  "rng_dmg" float,
  "tec_dmg" float,
  "crit_rate" float,
  "crit_dmg" float,
  "pp_cost_reduction" float,
  "active_pp_recovery" float,
  "natural_pp_recovery" float,
  "dmg_res" float,
  "popularity" int,
  "editors_choice" int
);

CREATE TABLE "skill_type" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text
);

CREATE TABLE "weapon_existence_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "weapon_type_id" int,
  "weapon_id" int,
  "popularity" int,
  "editors_choice" int,
  "icon" text,
  "special_name" text
);

CREATE TABLE "augment_type" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text
);

CREATE TABLE "photon_art" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "weapon_type_id" int,
  "potency" int,
  "power_distribution" float,
  "pp" int,
  "frames" int,
  "dps" int,
  "property" int,
  "icon" text
);

CREATE TABLE "enemy_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "level" int,
  "def" int,
  "atk" int
);

CREATE TABLE "class_skill" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "class_id" int,
  "icon" text,
  "description" text
);

CREATE TABLE "class_skill_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "class_skill_id" int,
  "dependency" text,
  "level" int,
  "effect" text,
  "duration" int,
  "cooldown" int,
  "damage_taken" text,
  "pa_potency" text,
  "conditional_buff" boolean,
  "pp_recovery" text,
  "property" text,
  "all_damage_buff" text,
  "active_pp_recovery" text,
  "status_ailment_accum" text,
  "status_ailment_duration" text,
  "pp_consumption" text,
  "max_hp_decrease" text,
  "natural_pp_recovery" text,
  "added_pp" int,
  "pb_gauge_fortification" text
);

CREATE TABLE "database_audit" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "action" text,
  "table_name" text,
  "row_name" text,
  "row_id" int,
  "old_value" text,
  "new_value" text,
  "date" timestamptz,
  "users_id" int
);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "username" text UNIQUE,
  "email" text UNIQUE,
  "password_hash" text,
  "created_on" timestamptz,
  "roles_id" int,
  "avatar" text,
  "editors_choice" int,
  "recovery_hash" text
);

CREATE TABLE "roles" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text
);

CREATE TABLE "builds" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "users_id" int,
  "creator" text,
  "build_name" text,
  "class1" int,
  "class2" int,
  "created_on" timestamptz,
  "last_modified" timestamptz,
  "likes" int,
  "data" text,
  "editors_choice" int
);

CREATE TABLE "skill_tree_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "class_id" int,
  "data" text,
  "skill_data" text,
  "line_color" text,
  "line_width" int,
  "gridsizex" int,
  "gridsizey" int,
  "gridpaddingx" int,
  "gridpaddingy" int,
  "halflineheight" int
);

CREATE TABLE "site_data" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text,
  "data" text
);

CREATE TABLE "element" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" text
);

ALTER TABLE "builds" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("roles_id") REFERENCES "roles" ("id");

ALTER TABLE "database_audit" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "class_weapon_type_data" ADD FOREIGN KEY ("class_id") REFERENCES "class" ("id");

ALTER TABLE "class_level_data" ADD FOREIGN KEY ("class_id") REFERENCES "class" ("id");

ALTER TABLE "class_weapon_type_data" ADD FOREIGN KEY ("weapon_type_id") REFERENCES "weapon_type" ("id");

ALTER TABLE "weapon" ADD FOREIGN KEY ("potential_id") REFERENCES "potential" ("id");

ALTER TABLE "potential_data" ADD FOREIGN KEY ("potential_id") REFERENCES "potential" ("id");

ALTER TABLE "skill_data" ADD FOREIGN KEY ("skill_id") REFERENCES "skill" ("id");

ALTER TABLE "skill" ADD FOREIGN KEY ("skill_type_id") REFERENCES "skill_type" ("id");

ALTER TABLE "weapon_existence_data" ADD FOREIGN KEY ("weapon_id") REFERENCES "weapon" ("id");

ALTER TABLE "weapon_existence_data" ADD FOREIGN KEY ("weapon_type_id") REFERENCES "weapon_type" ("id");

ALTER TABLE "augment" ADD FOREIGN KEY ("augment_type_id") REFERENCES "augment_type" ("id");

ALTER TABLE "photon_art" ADD FOREIGN KEY ("weapon_type_id") REFERENCES "weapon_type" ("id");

ALTER TABLE "class_skill_data" ADD FOREIGN KEY ("class_skill_id") REFERENCES "class_skill" ("id");

ALTER TABLE "class_skill" ADD FOREIGN KEY ("class_id") REFERENCES "class" ("id");

ALTER TABLE "builds" ADD FOREIGN KEY ("class1") REFERENCES "class" ("id");

ALTER TABLE "builds" ADD FOREIGN KEY ("class2") REFERENCES "class" ("id");

ALTER TABLE "skill_tree_data" ADD FOREIGN KEY ("class_id") REFERENCES "class" ("id");

ALTER TABLE "augment" ADD FOREIGN KEY ("element_id") REFERENCES "element" ("id");
