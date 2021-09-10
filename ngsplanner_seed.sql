delete from skill_tree_data;
delete from class_skill_data;
delete from class_skill;
delete from photon_art;
delete from enemy_data;
delete from database_audit;
delete from food_mult;
delete from food;
delete from armor;
delete from augment;
delete from element;
delete from augment_type;
delete from skill_data;
delete from skill;
delete from skill_type;
delete from builds;
delete from users;
delete from roles;
delete from weapon_existence_data;
delete from class_weapon_type_data;
delete from class_level_data;
delete from potential_data;
delete from weapon;
delete from weapon_type;
delete from class;
delete from potential;

insert into food_mult(amount,potency,pp,dmg_res,hp,pp_consumption,pp_recovery,weak_point_dmg,hp_recovery)
	values(0,1,0,1,1,1,1,1,1);
insert into food_mult(amount,potency,pp,dmg_res,hp,pp_consumption,pp_recovery,weak_point_dmg,hp_recovery)
	values(1,1.05,10,1.05,1.05,1,1,1,1);

insert into food(name,description,icon,potency,pp,dmg_res,hp,pp_consumption,pp_recovery,weak_point_dmg,hp_recovery,popularity,editors_choice,rarity)
	values('Rich Aelio Meat','Meat','',true,false,false,false,true,false,false,false,0,0,1);
insert into food(name,description,icon,potency,pp,dmg_res,hp,pp_consumption,pp_recovery,weak_point_dmg,hp_recovery,popularity,editors_choice,rarity)
	values('Light Aelio Meat','Meat','',true,false,false,false,false,true,false,false,0,0,2);
	
insert into class(name,icon) values('Hunter','/icons/UINGSClassHu.png');
insert into class(name,icon) values('Fighter','/icons/UINGSClassFi.png');
insert into class(name,icon) values('Ranger','/icons/UINGSClassRa.png');
insert into class(name,icon) values('Gunner','/icons/UINGSClassGu.png');
insert into class(name,icon) values('Force','/icons/UINGSClassFo.png');
insert into class(name,icon) values('Techter','/icons/UINGSClassTe.png');

insert into weapon_type(name,icon,dmg_type) values('Sword','/icons/NGSUIItemSwordMini.png',0);
insert into weapon_type(name,icon,dmg_type) values('Spear','/icons/NGSUIItemPartizanMini.png',0);
insert into weapon_type(name,icon,dmg_type) values('Wired Lance','/icons/NGSUIItemWiredLanceMini.png',0);
insert into weapon_type(name,icon,dmg_type) values('Twin Dagger','/icons/NGSUIItemTwinDaggersMini.png',0);
insert into weapon_type(name,icon,dmg_type) values('Double Saber','/icons/NGSUIItemDoubleSaberMini.png',0);
insert into weapon_type(name,icon,dmg_type) values('Knuckles','/icons/NGSUIItemKnuckleMini.png',0);
insert into weapon_type(name,icon,dmg_type) values('Assault Rifle','/icons/NGSUIItemAssaultRifleMini.png',1);
insert into weapon_type(name,icon,dmg_type) values('Launcher','/icons/NGSUIItemLauncherMini.png',1);
insert into weapon_type(name,icon,dmg_type) values('Twin Machine Guns','NGSUIItemTwinMachinegunsMini.png',1);
insert into weapon_type(name,icon,dmg_type) values('Rod','/icons/NGSUIItemRodMini.png',2);
insert into weapon_type(name,icon,dmg_type) values('Talis','/icons/NGSUIItemTalisMini.png',2);
insert into weapon_type(name,icon,dmg_type) values('Wand','/icons/NGSUIItemWandMini.png',2);

insert into potential(name,icon) values('Recycler Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Indomitable Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Defensive Formation','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Offensive Formation','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Bastion Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Meditation Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Mustered Might Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Dynamo Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Berserk Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Wellspring Unit','/icons/NGSUIItemPotentialAbility.png');
insert into potential(name,icon) values('Endurance Unit','/icons/NGSUIItemPotentialAbility.png');

insert into class_level_data(class_id,name,level,hp,atk,def)
	values((SELECT id from class WHERE name='Hunter' limit 1),'Hunter Lv.1',1,300,450,304);
insert into class_level_data(class_id,name,level,hp,atk,def)
	values((SELECT id from class WHERE name='Hunter' limit 1),'Hunter Lv.2',2,303,459,309);
insert into class_level_data(class_id,name,level,hp,atk,def)
	values((SELECT id from class WHERE name='Fighter' limit 1),'Fighter Lv.1',1,280,454,301);
insert into class_level_data(class_id,name,level,hp,atk,def)
	values((SELECT id from class WHERE name='Ranger' limit 1),'Ranger Lv.1',1,240,448,300);
	
insert into class_weapon_type_data(class_id,weapon_type_id)
	values((SELECT id from class WHERE name='Hunter' limit 1),(SELECT id from weapon_type WHERE name='Sword' limit 1));
insert into class_weapon_type_data(class_id,weapon_type_id)
	values((SELECT id from class WHERE name='Hunter' limit 1),(SELECT id from weapon_type WHERE name='Spear' limit 1));
insert into class_weapon_type_data(class_id,weapon_type_id)
	values((SELECT id from class WHERE name='Hunter' limit 1),(SELECT id from weapon_type WHERE name='Wired Lance' limit 1));
insert into class_weapon_type_data(class_id,weapon_type_id)
	values((SELECT id from class WHERE name='Fighter' limit 1),(SELECT id from weapon_type WHERE name='Twin Dagger' limit 1));
insert into class_weapon_type_data(class_id,weapon_type_id)
	values((SELECT id from class WHERE name='Fighter' limit 1),(SELECT id from weapon_type WHERE name='Double Saber' limit 1));
insert into class_weapon_type_data(class_id,weapon_type_id)
	values((SELECT id from class WHERE name='Fighter' limit 1),(SELECT id from weapon_type WHERE name='Knuckles' limit 1));
	
insert into weapon(name,rarity,level_req,atk,potential_id,variance,base_affix_slots,drop_info,pb_gauge_build,icon)
	values('Primm',1,1,177,(select id from potential where name='Recycler Unit' limit 1),0.7,2,'Central City Item Shop, Common Drop',0,'/icons/uc1iBck.png');
insert into weapon(name,rarity,level_req,atk,potential_id,variance,base_affix_slots,drop_info,pb_gauge_build,icon)
	values('Tzvia',2,4,195,(select id from potential where name='Indomitable Unit' limit 1),0.7,2,'Central City Item Shop, Common Drop',0,'/icons/uc1iBck.png');
insert into weapon(name,rarity,level_req,atk,potential_id,variance,base_affix_slots,drop_info,pb_gauge_build,icon)
	values('Cattleya',1,1,200,(select id from potential where name='Recycler Unit' limit 1),0.7,2,'Central City Item Shop, Common Drop',0,'/icons/uc1iBck.png');
	
insert into potential_data(potential_id,name,level,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,description)
	values((select id from potential where name='Recycler Unit' limit 1),'Recycler Unit Lv.1',1,1.18,1.18,1.18,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,'Test description for the Recycler Unit');
insert into potential_data(potential_id,name,level,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,description)
	values((select id from potential where name='Recycler Unit' limit 1),'Recycler Unit Lv.2',2,1.20,1.20,1.20,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,'Test description for the Recycler Unit');
insert into potential_data(potential_id,name,level,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,description)
	values((select id from potential where name='Indomitable Unit' limit 1),'Indomitable Unit Lv.1',1,1.18,1.18,1.18,0,0,0,0,0,0,1.10,0,0,0,0,0,0,10,0,'Test description for the Indomitable Unit');
	
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Sword' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Spear' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Wired Lance' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Twin Dagger' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Double Saber' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Knuckles' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Assault Rifle' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Launcher' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Twin Machine Guns' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Rod' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Talis' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Wand' limit 1),(select id from weapon where name='Primm' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Sword' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Spear' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Wired Lance' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Twin Dagger' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Double Saber' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Knuckles' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Assault Rifle' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Launcher' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Twin Machine Guns' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Rod' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Talis' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
insert into weapon_existence_data(weapon_type_id,weapon_id,popularity,editors_choice,icon)
	values((select id from weapon_type where name='Wand' limit 1),(select id from weapon where name='Tzvia' limit 1),0,0,'');
	
	
insert into roles(name)
	values('Administrator');
insert into roles(name)
	values('Editor');
insert into roles(name)
	values('Guest');
	
insert into users(username,email,password_hash,created_on,roles_id,avatar,recovery_hash)
	values('sigonasr2','sigonasr2@gmail.com','ABCDEFG','2021-07-13 04:30+00',(select id from roles where name='Administrator' limit 1),'','');
insert into users(username,email,password_hash,created_on,roles_id,avatar,recovery_hash)
	values('sigonasr3','sigonasr3@gmail.com','ABCDEF','2021-07-14 05:30+00',(select id from roles where name='Editor' limit 1),'','');
	
insert into builds(users_id,creator,build_name,class1,class2,created_on,last_modified,likes,data,editors_choice)
	values((select id from users where username='sigonasr2' limit 1),'sigonasr2','Test Build',(select id from class where name='Ranger' limit 1),(select id from class where name='Force' limit 1),'2021-07-13 04:30+00','2021-07-13 04:30+00',5,'<DATA STRING>',0);
insert into builds(users_id,creator,build_name,class1,class2,created_on,last_modified,likes,data,editors_choice)
	values((select id from users where username='sigonasr3' limit 1),'sigonasr3','Test Build2',(select id from class where name='Techter' limit 1),(select id from class where name='Fighter' limit 1),'2021-07-13 06:30+00','2021-07-13 07:30+00',27,'<DATA STRING>',0);
	
insert into skill_type(name)
	values('Weapon');
insert into skill_type(name)
	values('Armor');
	
insert into skill(name,skill_type_id,icon)
	values('Fixa Attack',(select id from skill_type where name='Weapon' limit 1),'/icons/UINGSItemPresetAbility.png');
insert into skill(name,skill_type_id,icon)
	values('Fixa Guard',(select id from skill_type where name='Armor' limit 1),'/icons/UINGSItemPresetAbility.png');
insert into skill(name,skill_type_id,icon)
	values('Fixa Termina',(select id from skill_type where name='Weapon' limit 1),'/icons/UINGSItemPresetAbility.png');
	
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Attack' limit 1),'Fixa Attack Lv.1',1,0,1.02,1.02,1.02,0,0,0,0,0,0,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Attack' limit 1),'Fixa Attack Lv.2',2,0,1.03,1.03,1.03,0,0,0,0,0,0,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Attack' limit 1),'Fixa Attack Lv.3',3,0,1.04,1.04,1.04,0,0,0,0,0,0,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Guard' limit 1),'Fixa Guard Lv.1',1,0,0,0,0,0,0,0,0,0,1.01,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Guard' limit 1),'Fixa Guard Lv.2',2,0,0,0,0,0,0,0,0,0,1.02,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Guard' limit 1),'Fixa Guard Lv.3',3,0,0,0,0,0,0,0,0,0,1.03,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Termina' limit 1),'Fixa Termina Lv.1',1,0,0,0,0,0,1.05,0,0,0,0,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Termina' limit 1),'Fixa Termina Lv.2',2,0,0,0,0,0,1.08,0,0,0,0,0,0);
insert into skill_data(skill_id,name,level,variance,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,popularity,editors_choice)
	values((select id from skill where name='Fixa Termina' limit 1),'Fixa Termina Lv.3',3,0,0,0,0,0,1.10,0,0,0,0,0,0);
	
insert into element(name)
	values('None');
insert into element(name)
	values('Fire');
insert into element(name)
	values('Ice');
insert into element(name)
	values('Lightning');

insert into augment_type(name)
	values('Stamina');
insert into augment_type(name)
	values('Spirit');
insert into augment_type(name)
	values('Might');
insert into augment_type(name)
	values('Precision');
insert into augment_type(name)
	values('Ice Weakness');

insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Stamina' limit 1),1,0,5,0,0,0,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,3,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Stamina' limit 1),2,0,10,0,0,0,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,4,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Stamina' limit 1),3,0,15,0,0,0,0,0,0,0,0,0,0,0.09,0,0,0,0,0,0,0,5,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Spirit' limit 1),1,0,0,3,0,0,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,2,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Spirit' limit 1),2,0,0,4,0,0,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,3,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Spirit' limit 1),3,0,0,5,0,0,0,0,0,0,0,0,0,0.09,0,0,0,0,0,0,0,4,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Might' limit 1),1,0,0,0,1.01,0,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,4,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Might' limit 1),2,0,0,0,1.015,0,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,5,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Might' limit 1),3,0,0,0,1.02,0,0,0,0,0,0,0,0,0.09,0,0,0,0,0,0,0,6,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Precision' limit 1),1,0,0,0,0,1.01,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,4,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Precision' limit 1),2,0,0,0,0,1.015,0,0,0,0,0,0,0,0.1,0,0,0,0,0,0,0,5,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Precision' limit 1),3,0,0,0,0,1.02,0,0,0,0,0,0,0,0.09,0,0,0,0,0,0,0,6,0,0,0,(select id from element where name='None' limit 1),'');
insert into augment(augment_type_id,name,variance,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,affix_success_rate,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,pb_gauge_build,popularity,editors_choice,element_id,icon)
	values((select id from augment_type where name='Ice Weakness' limit 1),1,0,0,0,0,1.02,0,0,0,0,0,0,0,0.09,0,0,0,0,0,0,0,6,0,0,0,(select id from element where name='Ice' limit 1),'');
	
insert into armor(name,rarity,level_req,def,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,slot,icon,popularity,editors_choice)
	values('Primm Armor',1,1,8,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,'/icons/20M6Z7t.png',0,0);
insert into armor(name,rarity,level_req,def,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,slot,icon,popularity,editors_choice)
	values('Tzvia Armor',2,1,9,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.2,2,'/icons/F0t58xP.png',0,0);
insert into armor(name,rarity,level_req,def,hp,pp,mel_dmg,rng_dmg,tec_dmg,crit_rate,crit_dmg,pp_cost_reduction,active_pp_recovery,natural_pp_recovery,dmg_res,all_down_res,burn_res,freeze_res,blind_res,shock_res,panic_res,poison_res,battle_power_value,slot,icon,popularity,editors_choice)
	values('Theseus Armor',3,5,10,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1.1,3,'/icons/uldt9lR.png',0,0);

insert into database_audit(action,table_name,row_name,row_id,old_value,new_value,date,users_id)
	values('INSERT','augment','crit_rate',4,'','0.15','2018-07-16 03:30+00',(select id from users where username='sigonasr2' limit 1));
insert into database_audit(action,table_name,row_name,row_id,old_value,new_value,date,users_id)
	values('UPDATE','skill_data','mel_dmg',1,'0.01','0','2018-07-17 19:45+00',(select id from users where username='sigonasr3' limit 1));
	
insert into photon_art(name,weapon_type_id,potency,power_distribution,pp,frames,dps,icon)
	values('Normal Attack Lv1',(select id from weapon_type where name='Twin Dagger' limit 1),100,0.45,2,20,270,'');
insert into photon_art(name,weapon_type_id,potency,power_distribution,pp,frames,dps,icon)
	values('Spin Counter',(select id from weapon_type where name='Twin Dagger' limit 1),100,3,8,38,521,'');
	
insert into enemy_data(level,def,atk)
	values(1,450,900);
insert into enemy_data(level,def,atk)
	values(2,450,918);
insert into enemy_data(level,def,atk)
	values(3,467,935);
insert into enemy_data(level,def,atk)
	values(4,467,953);
	
insert into class_skill(name,class_id,icon,description)
	values('Hunter Physique',(SELECT id from class WHERE name='Hunter' limit 1),'','This does something useful. Probably.');
insert into class_skill(name,class_id,icon,description)
	values('War Cry',(SELECT id from class WHERE name='Fighter' limit 1),'','This is not useful.');
insert into class_skill(name,class_id,icon,description)
	values('Assault Charge Advent',(SELECT id from class WHERE name='Gunner' limit 1),'','This is ');
	
insert into class_skill_data(name,class_skill_id,dependency,level,effect,duration,cooldown,damage_taken,pa_potency,conditional_buff,pp_recovery,property,all_damage_buff,active_pp_recovery,status_ailment_accum,status_ailment_duration,pp_consumption,max_hp_decrease,natural_pp_recovery,added_pp,pb_gauge_fortification)
	values('Hunter Physique Lv.1',(SELECT id from class_skill WHERE name='Hunter Physique' limit 1),'',1,'Effect Name',20,15,'0.7','1',false,'0.5','','0','0','0','0','0','0','0',0,'0');
insert into class_skill_data(name,class_skill_id,dependency,level,effect,duration,cooldown,damage_taken,pa_potency,conditional_buff,pp_recovery,property,all_damage_buff,active_pp_recovery,status_ailment_accum,status_ailment_duration,pp_consumption,max_hp_decrease,natural_pp_recovery,added_pp,pb_gauge_fortification)
	values('War Cry Lv.1',(SELECT id from class_skill WHERE name='War Cry' limit 1),'',1,'Effect Name',14,10,0.5,'1.1','0.8',false,'0.6','','0','0','0','0','0','0','0',0,'0');
insert into class_skill_data(name,class_skill_id,dependency,level,effect,duration,cooldown,damage_taken,pa_potency,conditional_buff,pp_recovery,property,all_damage_buff,active_pp_recovery,status_ailment_accum,status_ailment_duration,pp_consumption,max_hp_decrease,natural_pp_recovery,added_pp,pb_gauge_fortification)
	values('War Cry Lv.2',(SELECT id from class_skill WHERE name='War Cry' limit 1),'',2,'Effect Name',11,11,'0.8','1',false,'0.5','','0','0','0','0','0','0','0',0,'0');
insert into class_skill_data(name,class_skill_id,dependency,level,effect,duration,cooldown,damage_taken,pa_potency,conditional_buff,pp_recovery,property,all_damage_buff,active_pp_recovery,status_ailment_accum,status_ailment_duration,pp_consumption,max_hp_decrease,natural_pp_recovery,added_pp,pb_gauge_fortification)
	values('Assault Charge Advent',(SELECT id from class_skill WHERE name='Assault Charge Advent' limit 1),'',1,'Effect Name',30,24,'1.8','1',false,'0.5','','0','0','0','0','0','0','0',0,'1.6');

insert into skill_tree_data(class_id,data,skill_data,line_color,line_width,gridsizex,gridsizey,gridpaddingx,gridpaddingy,halflineheight)
	values((select id from class where name='Hunter'),'□  □  ,└□─┘□□, │  ││, │  □│, □─□┼□,    □ ','','#000000',3,80,60,10,10,60);

insert into site_data(name,data) values('UNDER_CONSTRUCTION_TEXT','NGSplanner.com is currently under construction! Please check back after Sig yells at me enough to help finish it.');