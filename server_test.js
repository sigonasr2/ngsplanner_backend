const express = require('express');
const app = express() 
const bodyParser = require('body-parser');

const { Pool } = require('pg');

const db = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false
  }
});
const db2 = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false
  }
});
const PORT = process.env.PORT || 5000;
app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)
let allowCrossDomain = function(req, res, next) {
        res.header('Access-Control-Allow-Origin', "*");
        res.header('Access-Control-Allow-Headers', "*");
        res.header('Access-Control-Allow-Methods', "*");
        next();
  }
  app.use(allowCrossDomain);
 app.listen(PORT, () => console.log(`Listening on ${ PORT }`));

 const db4=db;
 
const PREFIX=""

const ENDPOINTDATA=[
	{
		endpoint:"class",
		requiredfields:["name"],
		optionalfields:["icon"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"class_level_data",
		requiredfields:["class_id","level","hp","atk","def","name"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"class_weapon_type_data",
		requiredfields:["class_id","weapon_type_id"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"weapon",
		requiredfields:["name","rarity","level_req","atk"],
		optionalfields:["potential_id","variance","base_affix_slots","drop_info","pb_gauge_build","icon"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"weapon_existence_data",
		requiredfields:["weapon_type_id","weapon_id"],
		optionalfields:["popularity","editors_choice","icon","special_name"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"weapon_type",
		requiredfields:["name","dmg_type"],
		optionalfields:["icon","shorthand"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"photon_art",
		requiredfields:["name","weapon_type_id","potency","dps"],
		optionalfields:["power_distribution","pp","frames","icon"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"armor",
		requiredfields:["name","rarity","level_req","def"],
		optionalfields:["hp","pp","mel_dmg","rng_dmg","tec_dmg","crit_rate","crit_dmg","pp_cost_reduction","active_pp_recovery","natural_pp_recovery","dmg_res","all_down_res","burn_res","freeze_res","blind_res","shock_res","panic_res","poison_res","battle_power_value","slot","icon","popularity","editors_choice"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"potential",
		requiredfields:["name"],
		optionalfields:["icon"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"potential_data",
		requiredfields:["potential_id","level","name"],
		optionalfields:["mel_dmg","rng_dmg","tec_dmg","crit_rate","crit_dmg","pp_cost_reduction","active_pp_recovery","natural_pp_recovery","dmg_res","all_down_res","burn_res","freeze_res","blind_res","shock_res","panic_res","poison_res","battle_power_value","pb_gauge_build","description"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"builds",
		requiredfields:["users_id","creator","build_name","class1","created_on","last_modified","data"],
		optionalfields:["class2","likes","editors_choice"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"skill",
		requiredfields:["name","skill_type_id"],
		optionalfields:["icon"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"skill_type",
		requiredfields:["name"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"skill_data",
		requiredfields:["skill_id","level","name"],
		optionalfields:["variance","mel_dmg","rng_dmg","tec_dmg","crit_rate","crit_dmg","pp_cost_reduction","active_pp_recovery","natural_pp_recovery","dmg_res","popularity","editors_choice"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"class_skill",
		requiredfields:["name","class_id"],
		optionalfields:["icon","description"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"class_skill_data",
		requiredfields:["name","class_skill_id","level"],
		optionalfields:["dependency","effect","duration","cooldown","damage_taken","pa_potency","conditional_buff","pp_recovery","property","all_damage_buff","active_pp_recovery","status_ailment_accum","status_ailment_duration","pp_consumption","max_hp_decrease","natural_pp_recovery","added_pp","pb_gauge_fortification"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"augment",
		requiredfields:["augment_type_id","name","element_id"],
		optionalfields:["variance","hp","pp","mel_dmg","rng_dmg","tec_dmg","crit_rate","crit_dmg","pp_cost_reduction","active_pp_recovery","natural_pp_recovery","dmg_res","affix_success_rate","all_down_res","burn_res","freeze_res","blind_res","shock_res","panic_res","poison_res","battle_power_value","pb_gauge_build","popularity","editors_choice","icon"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"augment_type",
		requiredfields:["name"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"enemy_data",
		requiredfields:["level","def","atk"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"food",
		requiredfields:["name","rarity"],
		optionalfields:["potency","pp","dmg_res","hp","pp_consumption","pp_recovery","weak_point_dmg","hp_recovery","popularity","editors_choice"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"food_mult",
		requiredfields:["amount"],
		optionalfields:["potency","pp","dmg_res","hp","pp_consumption","pp_recovery","weak_point_dmg","hp_recovery"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"roles",
		requiredfields:["name"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"users",
		requiredfields:["username","email","created_on","roles_id"],
		optionalfields:["avatar","editors_choice","recovery_hash"],
		excludedfields:["password_hash"] //Fields to not output in GET.
	},
	{
		endpoint:"database_audit",
		requiredfields:["action","table_name","row_name","row_id","new_value","date","users_id"],
		optionalfields:["old_value"],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"skill_tree_data",
		requiredfields:["class_id","data","skill_data","line_color","line_width","gridsizex","gridsizey","gridpaddingx","gridpaddingy","halflineheight"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"site_data",
		requiredfields:["name","data"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	},
	{
		endpoint:"element",
		requiredfields:["name"],
		optionalfields:[],
		excludedfields:[] //Fields to not output in GET.
	}
]

const MAXATTEMPTS=5
const LOCKOUTTIME=60000
var failedattempts=0
var lockedTime=new Date().getTime()-LOCKOUTTIME //Starts unlocked

for (var test of ["","/test"]) {

	app.post(PREFIX+test+"/passwordcheck",(req,res)=>{
		db4.query('select * from password where password=$1',[req.body.pass])
		.then((data)=>{
			if (data.rows.length>0) {
				res.status(200).json({verified:true})
			} else {
				var msg="Could not authenticate!";res.status(500).send(msg);throw msg
			}
		})
		.catch((err)=>{
			res.status(500).send(err.message)
		})
	})
	app.get(PREFIX+test+"/databases",(req,res)=>{
		db4.query('select * from password where password=$1',[req.query.pass])
		.then((data)=>{
			if (data.rows.length>0) {
				return db.query('select * from pg_database where datname like \'ngsplanner%\' order by datname desc limit 100')	
			} else {
				var msg="Could not authenticate!";res.status(500).send(msg);throw msg
			}
		})
		.then((data)=>{
			res.status(200).json(data.rows)
		})
		.catch((err)=>{
			res.status(500).send(err.message)
		})
	})

	app.post(PREFIX+test+"/databases/restorefrombackup",(req,res)=>{
		if (req.body.database) {
			db4.query('select * from password where password=$1',[req.body.pass])
			.then((data)=>{
				if (data.rows.length>0) {
					return db3.query('select * from pg_database where datname=$1',[req.body.database])
				} else {
					var msg="Could not authenticate!";res.status(500).send(msg);throw msg
				}
			})
			.then((data)=>{
				if (data.rows.length>0) {
					db.end(()=>{})
					return db3.query('select pg_terminate_backend (pid) from pg_stat_activity where pg_stat_activity.datname=\'ngsplanner\'')
				} else {
					var msg="Could not find requested database "+req.body.database;res.status(500).send(msg);throw msg
				}
			})
			.then(()=>{
				return db3.query('drop database ngsplanner') 
			})
			.then(()=>{
				return db3.query('create database ngsplanner with template '+req.body.database)
			})
			.then(()=>{
				db = new Pool({
				  user: 'postgres',
				  password: '',
				  host: 'postgres',
				  database: 'ngsplanner',
				  port: 5432,
				})
				res.status(200).send("Done!")
			})
			.catch((err)=>{
				console.log(err.message)
				res.status(500).send(err.message)
			})
		} else {
			res.status(500).send("Invalid data!")
		}
	})
	app.post(PREFIX+test+"/databases/testtolive",(req,res)=>{
		db4.query('select * from password where password=$1',[req.body.pass])
		.then((data)=>{
			if (data.rows.length>0) {
				db.end(()=>{})
				db2.end(()=>{})
				return db3.query('select pg_terminate_backend (pid) from pg_stat_activity where pg_stat_activity.datname=\'ngsplanner\' or pg_stat_activity.datname=\'ngsplanner2\'')
			} else {
				var msg="Could not authenticate!";res.status(500).send(msg);throw msg
			}
		})
		.then(()=>{
			return db3.query('drop database ngsplanner')
		})
		.then(()=>{
			return db3.query('create database ngsplanner with template ngsplanner2')
		})
		.then(()=>{
			db = new Pool({
			  user: 'postgres',
			  password: '',
			  host: 'postgres',
			  database: 'ngsplanner',
			  port: 5432,
			})
			db2 = new Pool({
			  user: 'postgres',
			  password: '',
			  host: 'postgres',
			  database: 'ngsplanner2',
			  port: 5432,
			})
			res.status(200).send("Done!")
		})
		.catch((err)=>{
			console.log(err.message)
			res.status(500).send(err.message)
		})
	})

	app.post(PREFIX+test+"/databases/livetotest",(req,res)=>{
		db4.query('select * from password where password=$1',[req.body.pass])
		.then((data)=>{
			if (data.rows.length>0) {
				db.end(()=>{})
				db2.end(()=>{})
				return db3.query('select pg_terminate_backend (pid) from pg_stat_activity where pg_stat_activity.datname=\'ngsplanner\' or pg_stat_activity.datname=\'ngsplanner2\'')
			} else {
				var msg="Could not authenticate!";res.status(500).send(msg);throw msg
			}
		})
		.then(()=>{
			return db3.query('drop database ngsplanner2')
		})
		.then(()=>{
			return db3.query('create database ngsplanner2 with template ngsplanner')
		})
		.then(()=>{
			db = new Pool({
			  user: 'postgres',
			  password: '',
			  host: 'postgres',
			  database: 'ngsplanner',
			  port: 5432,
			})
			db2 = new Pool({
			  user: 'postgres',
			  password: '',
			  host: 'postgres',
			  database: 'ngsplanner2',
			  port: 5432, 
			})
			res.status(200).send("Done!")
		})
		.catch((err)=>{
			res.status(500).send(err.message)
		})
	})

	app.post(PREFIX+test+"/databases/backup",(req,res)=>{
		var date = new Date()
		db4.query('select * from password where password=$1',[req.body.pass])
		.then((data)=>{
			if (data.rows.length>0) {
				db.end(()=>{})
				return db3.query('select pg_terminate_backend (pid) from pg_stat_activity where pg_stat_activity.datname=\'ngsplanner\'')
			} else {
				var msg="Could not authenticate!";res.status(500).send(msg);throw msg
			} 
		})
		.then(()=>{
			return db3.query('create database ngsplanner'+String(date.getFullYear()).padStart(4,'0')+String(date.getMonth()).padStart(2,'0')+String(date.getDate()).padStart(2,'0')+String(date.getHours()).padStart(2,'0')+String(date.getMinutes()).padStart(2,'0')+String(date.getSeconds()).padStart(2,'0')+' with template ngsplanner')
		})
		.then(()=>{
			db = new Pool({
			  user: 'postgres',
			  password: '',
			  host: 'postgres',
			  database: 'ngsplanner',
			  port: 5432,
			})
			res.status(200).send("Done!")
		})
		.catch((err)=>{
			res.status(500).send(err.message)
		})
	})
	
	app.get(PREFIX+test+"/userData",(req,res)=>{
		if (req.query.token) {
			discord.tokenRequest({
				code:req.query.token,
				grantType: "authorization_code",
				scope: ["identify", "email"],
			})
			.then(res2=>{return discord.getUser(res2.access_token)})
			.then(res2=>{
				//Sample output. We can register the user from here.
				//{"id":"176012829076226048","username":"sigonasr2","avatar":"c19b2f2a9d530f9f99efa3b1b573d7ef","discriminator":"6262","public_flags":0,"flags":0,"banner":"e0668c23567d5b58e88ea916306ec6d5","banner_color":null,"accent_color":null,"locale":"en-US","mfa_enabled":false,"premium_type":2,"email":"sigonasr2@gmail.com","verified":true}
				/*var obj = {
					body:{
						recoveryhash:res2.id,
						password:req.query.token,
						username:res2.username,
						avatar:"https://cdn.discordapp.com/avatars/"+res2.id+"/"+res2.avatar+".png",
						userID:res2.id,
						email:res2.email
					}
				}
				registerUsers(obj,res)*/
				res2.token=sh(req.query.token)
				res.status(200).json(res2)
			})
			.catch((err)=>{
				//console.log(err.response)
				res.status(500).send("Everything is not fine")
			})
			//res.status(200).send("Everything is fine")
		} else {
			res.status(500).send("Everything is not fine")
		}
	})
}

function CreateDynamicEndpoints() {
	ENDPOINTDATA.forEach((endpoint)=>{
		app.get(PREFIX+"/"+endpoint.endpoint,(req,res)=>{
				db4.query('select * from password where password=$1',[req.query.pass])
				.then((data)=>{
					if (data.rows.length>0) {
						if (endpoint.requiredfields.includes("name")) {
							db.query('select distinct on (name) name,* from '+endpoint.endpoint+' order by name,id desc')
							.then((data)=>{
								res.status(200).json({fields:data.fields,rows:data.rows})
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						} else {
							db.query('select * from '+endpoint.endpoint+" order by id desc")
							.then((data)=>{
								res.status(200).json({fields:data.fields,rows:data.rows})
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}
					} else {
						res.status(500).send("Could not authenticate!")
					}
				})
			})
			
			app.post(PREFIX+"/"+endpoint.endpoint,async(req,res)=>{
				db4.query('select * from password where password=$1',[req.body.pass])
				.then(async(data)=>{
					if (data.rows.length>0) {
						var allExist=true
						endpoint.requiredfields.forEach((field)=>{
							if (!(field in req.body)) {
								allExist=false;
							}
						})
						if (!allExist) {
							res.status(300).send("Required fields are: "+endpoint.requiredfields.filter((field)=>!(field in req.body)).join(','))
							return
						}
						
						var combinedfields = [...endpoint.requiredfields,...endpoint.optionalfields,...endpoint.excludedfields]
						//console.log(combinedfields)
						var all_filled_fields=combinedfields.filter((field)=>(field in req.body))
						var requiresInsert=true
						if (endpoint.requiredfields.includes("name")) {
							await db.query('update '+endpoint.endpoint+' set '+all_filled_fields.map((field,i)=>{
							if (!field.includes("_id")) {return field+"=$"+(i+1)}else{
								if (Number.isNaN(Number(req.body[field]))) {return field+"=(select id from "+field.replace("_id","")+" where name=$"+(i+1)+")"} else {return field+"=$"+(i+1)}
							}}).join(",")+' where name=$'+(all_filled_fields.length+1)+' returning *',[...all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]),req.body["name"]])
							.then((data)=>{
								if (data.rows.length===0) {
									requiresInsert=true
								} else {
									requiresInsert=false
									res.status(200).json(data.rows)
								}
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}
						if (requiresInsert) {
							db.query('insert into '+endpoint.endpoint+"("+all_filled_fields.join(',')+") values("+all_filled_fields.map((field,i)=>{
								if (!field.includes("_id")) {return "$"+(i+1)}else{
									if (Number.isNaN(Number(req.body[field]))) {return "(select id from "+field.replace("_id","")+" where name=$"+(i+1)+")"} else {return "$"+(i+1)}
								}}).join(",")+") returning *",all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]))
							.then((data)=>{
								res.status(200).json(data.rows)
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}app.post(PREFIX+"/"+endpoint.endpoint,async(req,res)=>{
				db4.query('select * from password where password=$1',[req.body.pass])
				.then(async(data)=>{
					if (data.rows.length>0) {
						var allExist=true
						endpoint.requiredfields.forEach((field)=>{
							if (!(field in req.body)) {
								allExist=false;
							}
						})
						if (!allExist) {
							res.status(300).send("Required fields are: "+endpoint.requiredfields.filter((field)=>!(field in req.body)).join(','))
							return
						}
						
						var combinedfields = [...endpoint.requiredfields,...endpoint.optionalfields,...endpoint.excludedfields]
						//console.log(combinedfields)
						var all_filled_fields=combinedfields.filter((field)=>(field in req.body))
						var requiresInsert=true
						if (endpoint.requiredfields.includes("name")) {
							await db.query('update '+endpoint.endpoint+' set '+all_filled_fields.map((field,i)=>{
							if (!field.includes("_id")) {return field+"=$"+(i+1)}else{
								if (Number.isNaN(Number(req.body[field]))) {return field+"=(select id from "+field.replace("_id","")+" where name=$"+(i+1)+")"} else {return field+"=$"+(i+1)}
							}}).join(",")+' where name=$'+(all_filled_fields.length+1)+' returning *',[...all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]),req.body["name"]])
							.then((data)=>{
								if (data.rows.length===0) {
									requiresInsert=true
								} else {
									requiresInsert=false
									res.status(200).json(data.rows)
								}
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}
						if (requiresInsert) {
							db.query('insert into '+endpoint.endpoint+"("+all_filled_fields.join(',')+") values("+all_filled_fields.map((field,i)=>{
								if (!field.includes("_id")) {return "$"+(i+1)}else{
									if (Number.isNaN(Number(req.body[field]))) {return "(select id from "+field.replace("_id","")+" where name=$"+(i+1)+")"} else {return "$"+(i+1)}
								}}).join(",")+") returning *",all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]))
							.then((data)=>{
								res.status(200).json(data.rows)
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}
					} else {
						res.status(500).send("Could not authenticate!")
					}
				})
			})
					} else {
						res.status(500).send("Could not authenticate!")
					}
				})
			})
			
			app.patch(PREFIX+"/"+endpoint.endpoint,(req,res)=>{
				if (req.body.id) {
					db4.query('select * from password where password=$1',[req.body.pass])
					.then((data)=>{
						if (data.rows.length>0) {
							var combinedfields = [...endpoint.requiredfields,...endpoint.optionalfields,...endpoint.excludedfields]
							//console.log(combinedfields)
							var all_filled_fields=combinedfields.filter((field)=>(field in req.body))
							
							return db.query('update '+endpoint.endpoint+' set '+all_filled_fields.map((field,i)=>field+"=$"+(i+1)).join(",")+" where id=$"+(all_filled_fields.length+1)+" returning *",[...all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]),req.body.id])
						} else {
							var msg="Could not authenticate!";res.status(500).send(msg);throw msg
						}
					})
					.then((data)=>{
						res.status(200).json(data.rows)
					})
					.catch((err)=>{
						res.status(500).send(err.message)
					})
				} else {
					res.status(300).send("Invalid query!")
				}
			})
			
			app.delete(PREFIX+"/"+endpoint.endpoint,(req,res)=>{
				if (req.body.id) {
					db4.query('select * from password where password=$1',[req.body.pass])
					.then((data)=>{
						if (data.rows.length>0) {
							return db.query('delete from '+endpoint.endpoint+'  where id=$1 returning *',[req.body.id])
						} else {
							var msg="Could not authenticate!";res.status(500).send(msg);throw msg
						}
					})
					.then((data)=>{
						res.status(200).json(data.rows)
					})
					.catch((err)=>{
						res.status(500).send(err.message)
					})
				} else {
					res.status(300).send("Invalid query!")
				}
			})
			
			app.get(PREFIX+"/test/"+endpoint.endpoint,(req,res)=>{
				db4.query('select * from password where password=$1',[req.query.pass])
				.then((data)=>{
					if (data.rows.length>0) {
						if (endpoint.requiredfields.includes("name")) {
							db2.query('select distinct on (name) name,* from '+endpoint.endpoint+' order by name,id desc')
							.then((data)=>{
								res.status(200).json({fields:data.fields,rows:data.rows})
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						} else {
							db2.query('select * from '+endpoint.endpoint+" order by id desc")
							.then((data)=>{
								res.status(200).json({fields:data.fields,rows:data.rows})
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}
					} else {
						res.status(500).send("Could not authenticate!")
					}
				})
			})
			
			app.post(PREFIX+"/test/"+endpoint.endpoint,async(req,res)=>{
				db4.query('select * from password where password=$1',[req.body.pass])
				.then(async(data)=>{
					if (data.rows.length>0) {
						var allExist=true
						endpoint.requiredfields.forEach((field)=>{
							if (!(field in req.body)) {
								allExist=false;
							}
						})
						if (!allExist) {
							res.status(300).send("Required fields are: "+endpoint.requiredfields.filter((field)=>!(field in req.body)).join(','))
							return
						}
						
						var combinedfields = [...endpoint.requiredfields,...endpoint.optionalfields,...endpoint.excludedfields]
						//console.log(combinedfields)
						var all_filled_fields=combinedfields.filter((field)=>(field in req.body))
						var requiresInsert=true
						if (endpoint.requiredfields.includes("name")) {
							await db2.query('update '+endpoint.endpoint+' set '+all_filled_fields.map((field,i)=>field+"=$"+(i+1)).join(",")+' where name=$'+(all_filled_fields.length+1)+' returning *',[...all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]),req.body["name"]])
							.then((data)=>{
								if (data.rows.length===0) {
									requiresInsert=true
								} else {
									requiresInsert=false
									res.status(200).json(data.rows)
								}
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}
						if (requiresInsert) {
							db2.query('insert into '+endpoint.endpoint+"("+all_filled_fields.join(',')+") values("+all_filled_fields.map((field,i)=>"$"+(i+1)).join(",")+") returning *",all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]))
							.then((data)=>{
								res.status(200).json(data.rows)
							})
							.catch((err)=>{
								res.status(500).send(err.message)
							})
						}
					} else {
						res.status(500).send("Could not authenticate!")
					}
				})
			})
			
			app.patch(PREFIX+"/test/"+endpoint.endpoint,(req,res)=>{
				if (req.body.id) {
					db4.query('select * from password where password=$1',[req.body.pass])
					.then((data)=>{
						if (data.rows.length>0) {
							var combinedfields = [...endpoint.requiredfields,...endpoint.optionalfields,...endpoint.excludedfields]
							//console.log(combinedfields)
							var all_filled_fields=combinedfields.filter((field)=>(field in req.body))
							
							return db2.query('update '+endpoint.endpoint+' set '+all_filled_fields.map((field,i)=>field+"=$"+(i+1)).join(",")+" where id=$"+(all_filled_fields.length+1)+" returning *",[...all_filled_fields.map((field)=>typeof req.body[field]==='string'?req.body[field].trim():req.body[field]),req.body.id])
						} else {
							var msg="Could not authenticate!";res.status(500).send(msg);throw msg
						}
					})
					.then((data)=>{
						res.status(200).json(data.rows)
					})
					.catch((err)=>{
						res.status(500).send(err.message)
					})
				} else {
					res.status(300).send("Invalid query!")
				}
			})
			
			app.delete(PREFIX+"/test/"+endpoint.endpoint,(req,res)=>{
				if (req.body.id) {
					db4.query('select * from password where password=$1',[req.body.pass])
					.then((data)=>{
						if (data.rows.length>0) {
							return db2.query('delete from '+endpoint.endpoint+'  where id=$1 returning *',[req.body.id])
						} else {
							var msg="Could not authenticate!";res.status(500).send(msg);throw msg
						}
					})
					.then((data)=>{
						res.status(200).json(data.rows)
					})
					.catch((err)=>{
						res.status(500).send(err.message)
					})
				} else {
					res.status(300).send("Invalid query!")
				}
			})
	})
}

function CleanUp(arr,vals){
	return arr.map((arrVal)=>{
		vals.forEach((val)=>{
			arrVal[val]=undefined
		})
		return arrVal
	})
}

app.get(PREFIX+'/data',async(req,res)=>{
	var finalresult = {}
	var promises = []
	for (var endpoint of ENDPOINTDATA) {
		if (endpoint.endpoint!=="builds"&&endpoint.endpoint!=="users") {
			if (endpoint.requiredfields.includes("name")) {
				await db.query('select * from (select distinct on (name) name,* from '+endpoint.endpoint+' order by name,id desc)t order by id asc')
				.then((data)=>{
					finalresult[endpoint.endpoint]={}
					data.rows.forEach((val)=>{finalresult[endpoint.endpoint][val.name]=val})
				})
			} else {
				await db.query('select * from '+endpoint.endpoint+" order by id desc")
				.then((data)=>{
					finalresult[endpoint.endpoint]=data.rows
				})
			}
		}
	}
	res.status(200).json(finalresult)
})

app.get(PREFIX+'/test/data',async(req,res)=>{
	var finalresult = {}
	var promises = []
	for (var endpoint of ENDPOINTDATA) {
		if (endpoint.endpoint!=="builds"&&endpoint.endpoint!=="users") {
			if (endpoint.requiredfields.includes("name")) {
				await db2.query('select distinct on (name) name,* from '+endpoint.endpoint+' order by name,id desc')
				.then((data)=>{
					finalresult[endpoint.endpoint]={}
					data.rows.forEach((val)=>{finalresult[endpoint.endpoint][val.name]=val})
				})
			} else {
				await db2.query('select * from '+endpoint.endpoint+" order by id desc")
				.then((data)=>{
					finalresult[endpoint.endpoint]=data.rows
				})
			}
		}
	}
	res.status(200).json(finalresult)
})

app.get(PREFIX+'/dataid',async(req,res)=>{
	var finalresult = {}
	var promises = []
	for (var endpoint of ENDPOINTDATA) {
		if (endpoint.endpoint!=="builds"&&endpoint.endpoint!=="users") {
			await db.query('select * from '+endpoint.endpoint+' order by id asc')
			.then((data)=>{
				finalresult[endpoint.endpoint]={}
				data.rows.forEach((val)=>{finalresult[endpoint.endpoint][val.id]=val})
			})
		}
	}
	res.status(200).json(finalresult)
})

app.get(PREFIX+'/test/dataid',async(req,res)=>{
	var finalresult = {}
	var promises = []
	for (var endpoint of ENDPOINTDATA) {
		if (endpoint.endpoint!=="builds"&&endpoint.endpoint!=="users") {
			await db2.query('select * from '+endpoint.endpoint+' order by id asc')
			.then((data)=>{
				finalresult[endpoint.endpoint]={}
				data.rows.forEach((val)=>{finalresult[endpoint.endpoint][val.id]=val})
			})
		}
	}
	res.status(200).json(finalresult)
})

function registerUsers(req,res){
	if (req.body.recoveryhash&&req.body.password) {
		db.query('select * from users where email=$1',[req.body.email])
		.then((data)=>{ 
			if (data.rows.length==0) {
				return db.query('select * from users where recovery_hash=$1 limit 1',[req.body.recoveryhash])
				.then((data)=>{
					if (data.rows.length>0) {
						db.query('update users set username=$3,password_hash=$2 where id=$1',[data.rows[0].id,req.body.password,req.body.username])
						db2.query('update users set username=$3,password_hash=$2 where id=$1',[data.rows[0].id,req.body.password,req.body.username])
						res.status(200).json({verified:true})
					} else {
						res.status(200).json({verified:true})
						//This doesn't exist. At this time we will register them since this is external.
						db.query('insert into users(username,email,password_hash,created_on,roles_id,avatar,recovery_hash) values($1,$2,$3,$4,(select id from roles where name=\'Guest\'),$5,$6) returning id',[req.body.username,req.body.email,req.body.password,new Date(),req.body.avatar,req.body.userID])
						.then((data)=>{
							if (data.rows.length>0) {
								db2.query('insert into users(username,email,password_hash,created_on,roles_id,avatar,recovery_hash,id) values($1,$2,$3,$4,(select id from roles where name=\'Guest\'),$5,$6,$7) returning id',[req.body.username,req.body.email,req.body.password,new Date(),req.body.avatar,req.body.userID,data.rows[0].id])
							}
						})
						.catch((err)=>{
							console.log(err.message)
						})
					}
				})
				.catch((err)=>{
					console.log(err.message)
					res.status(500).send(err.message)
				})
			} else {
				console.log("User with email '"+req.body.email+"' already exists assume it's not a google account. Overwriting...")
				//console.log(req.body.password)
				db.query('update users set password_hash=$1,avatar=$2,recovery_hash=$3,username=$5 where id=$4 returning id',[req.body.password,req.body.avatar,req.body.userID,data.rows[0].id,req.body.username])
				.then((data)=>{
					if (data.rows.length>0) {
						db2.query('update users set password_hash=$1,avatar=$2,recovery_hash=$3,username=$5 where id=$4 returning id',[req.body.password,req.body.avatar,req.body.userID,data.rows[0].id,req.body.username])
					}
				})
				res.status(200).json({verified:true})
			}
		})
		.catch((err)=>{
			
		})
	} else {
		res.status(500).send("Unsupported operation!")
	}
}

app.post(PREFIX+"/registerUser",registerUsers)
app.post(PREFIX+"/test/registerUser",registerUsers)

function validUser(req,res) {
	//console.log(sh("098f6bcd4621d373cade4e832627b4f6"))
	if (req.body.recoveryhash&&req.body.password) {
		//A recovery hash means this is an external login. Try seeing if it matches something.
		db.query('select * from users where recovery_hash=$1 and password_hash=$2 limit 1',[req.body.recoveryhash,req.body.password])
		.then((data)=>{
			if (data.rows.length>0) {
				res.status(200).json({verified:true,avatar:data.rows[0].avatar})
			} else {
				res.status(200).json({verified:false})
			}
		})
		.catch((err)=>{
			res.status(500).send(err.message)
		})
	} else {
		db.query('select * from users where username=$1 and password_hash=$2 limit 1',[req.body.username,sh(req.body.password)])
		.then((data)=>{
			if (data.rows.length>0) {
				res.status(200).json({verified:true})
			} else {
				res.status(200).json({verified:false})
			}
		})
		.catch((err)=>{
			res.status(500).send(err.message)
		})
	}
}

app.post(PREFIX+"/validUser",validUser)
app.post(PREFIX+"/test/validUser",validUser)

app.post(PREFIX+"/saveskilltree",(req,res)=>{
	db4.query('select * from password where password=$1',[req.body.pass])
	.then((data)=>{
		if (data.rows.length>0) {
			return db.query('select * from skill_tree_data where class_id=$1 limit 1',[req.body.class_id])
		} else {
			var msg="Could not authenticate!";res.status(500).send(msg);throw msg
		}
	})
	.then((data)=>{
		if (data.rows.length>0) {
			return db.query('update skill_tree_data set data=$1,skill_data=$2,line_color=$3,line_width=$4,gridsizex=$5,gridsizey=$6,gridpaddingx=$7,gridpaddingy=$8,halflineheight=$9 where class_id=$10',
			[req.body.data,req.body.skill_data,req.body.line_color,req.body.line_width,req.body.gridsizex,req.body.gridsizey,req.body.gridpaddingx,req.body.gridpaddingy,req.body.halflineheight,req.body.class_id])
		} else {
			return db.query('insert into skill_tree_data(data,skill_data,line_color,line_width,gridsizex,gridsizey,gridpaddingx,gridpaddingy,class_id,halflineheight) values($1,$2,$3,$4,$5,$6,$7,$8,$10,$9)',
			[req.body.data,req.body.skill_data,req.body.line_color,req.body.line_width,req.body.gridsizex,req.body.gridsizey,req.body.gridpaddingx,req.body.gridpaddingy,req.body.halflineheight,req.body.class_id])
		}
	})
	.then((data)=>{
		res.status(200).send("OK!")
	})
	.catch((err)=>{
		res.status(500).send(err.message)
	})
})

app.post(PREFIX+"/test/saveskilltree",(req,res)=>{
	db4.query('select * from password where password=$1',[req.body.pass])
	.then((data)=>{
		if (data.rows.length>0) {
			return db2.query('select * from skill_tree_data where class_id=$1 limit 1',[req.body.class_id])
		} else {
			var msg="Could not authenticate!";res.status(500).send(msg);throw msg
		}
	})
	.then((data)=>{
		if (data.rows.length>0) {
			return db2.query('update skill_tree_data set data=$1,skill_data=$2,line_color=$3,line_width=$4,gridsizex=$5,gridsizey=$6,gridpaddingx=$7,gridpaddingy=$8,halflineheight=$9 where class_id=$10',
			[req.body.data,req.body.skill_data,req.body.line_color,req.body.line_width,req.body.gridsizex,req.body.gridsizey,req.body.gridpaddingx,req.body.gridpaddingy,req.body.halflineheight,req.body.class_id])
		} else {
			return db2.query('insert into skill_tree_data(data,skill_data,line_color,line_width,gridsizex,gridsizey,gridpaddingx,gridpaddingy,class_id,halflineheight) values($1,$2,$3,$4,$5,$6,$7,$8,$10,$9)',
			[req.body.data,req.body.skill_data,req.body.line_color,req.body.line_width,req.body.gridsizex,req.body.gridsizey,req.body.gridpaddingx,req.body.gridpaddingy,req.body.halflineheight,req.body.class_id])
		}
	})
	.then((data)=>{
		res.status(200).send("OK!")
	})
	.catch((err)=>{
		res.status(500).send(err.message)
	})
})

function submitBuild(req,res,db,send) {
	if (req.body.id) {
		db.query('select users.username from builds join users on users_id=users.id where builds.id=$1',[req.body.id])
		.then((data)=>{
			console.log(data.rows)
			if (data.rows.length>0&&data.rows[0].username===req.body.username&&data.rows[0].password_hash===sh(req.body.pass)) {
				return db.query('update builds set creator=$1,build_name=$2,class1=(SELECT id from class WHERE name=$3 limit 1),class2=(SELECT id from class WHERE name=$4 limit 1),last_modified=$5,data=$6 where id=$7 returning id',[req.body.creator,req.body.build_name,req.body.class1,req.body.class2,new Date(),req.body.data,req.body.id])
					.then((data)=>{
						if (send) {
							res.status(200).json(data.rows[0])
						}
						if (db2) {
							db2.query('update builds set creator=$1,build_name=$2,class1=(SELECT id from class WHERE name=$3 limit 1),class2=(SELECT id from class WHERE name=$4 limit 1),last_modified=$5,data=$6 where id=$7 returning id',[req.body.creator,req.body.build_name,req.body.class1,req.body.class2,new Date(),req.body.data,req.body.id])
						}
					})
					.catch((err)=>{
						console.log(err.message)
						if (send) {
							res.status(500).send(err.message)
						}
					})
			} else {
				return db.query('insert into builds(users_id,creator,build_name,class1,class2,created_on,last_modified,likes,data,editors_choice) values((SELECT id from users WHERE username=$1 limit 1),$2,$3,(SELECT id from class WHERE name=$4 limit 1),(SELECT id from class WHERE name=$5 limit 1),$6,$7,$8,$9,$10) returning id',[req.body.username,req.body.creator,req.body.build_name,req.body.class1,req.body.class2,new Date(),new Date(),0,req.body.data,0])
					.then((data)=>{
						if (send) {
							res.status(200).json(data.rows[0])
						}
						if (db2) {
							db2.query('insert into builds(users_id,creator,build_name,class1,class2,created_on,last_modified,likes,data,editors_choice,id) values((SELECT id from users WHERE username=$1 limit 1),$2,$3,(SELECT id from class WHERE name=$4 limit 1),(SELECT id from class WHERE name=$5 limit 1),$6,$7,$8,$9,$10,$11) returning id',[req.body.username,req.body.creator,req.body.build_name,req.body.class1,req.body.class2,new Date(),new Date(),0,req.body.data,0,data.rows[0].id])
						}
					})
					.catch((err)=>{
						console.log(err.message)
						if (send) {
							res.status(500).send(err.message)
						}
					})
			}
		})
		.catch((err)=>{
			console.log(err.message)
			if (send) {
				res.status(500).send(err.message)
			}
		})
	} else {
		db.query('insert into builds(users_id,creator,build_name,class1,class2,created_on,last_modified,likes,data,editors_choice) values((SELECT id from users WHERE username=$1 limit 1),$2,$3,(SELECT id from class WHERE name=$4 limit 1),(SELECT id from class WHERE name=$5 limit 1),$6,$7,$8,$9,$10) returning id',[req.body.username,req.body.creator,req.body.build_name,req.body.class1,req.body.class2,new Date(),new Date(),0,req.body.data,0])
		.then((data)=>{
			if (send) {
				res.status(200).json(data.rows[0])
			}
			if (db2) {
				db2.query('insert into builds(users_id,creator,build_name,class1,class2,created_on,last_modified,likes,data,editors_choice,id) values((SELECT id from users WHERE username=$1 limit 1),$2,$3,(SELECT id from class WHERE name=$4 limit 1),(SELECT id from class WHERE name=$5 limit 1),$6,$7,$8,$9,$10,$11) returning id',[req.body.username,req.body.creator,req.body.build_name,req.body.class1,req.body.class2,new Date(),new Date(),0,req.body.data,0,data.rows[0].id])
			}
		})
		.catch((err)=>{
			console.log(err.message)
			if (send) {
				res.status(500).send(err.message)
			}
		})
	}
}

app.post(PREFIX+"/submitBuild",(req,res)=>{
	submitBuild(req,res,db,true)
})

app.post(PREFIX+"/test/submitBuild",(req,res)=>{
	submitBuild(req,res,db,true)
})

app.get(PREFIX+"/getBuild",(req,res)=>{
	db.query('select * from builds where id=$1 limit 1',[req.query.id])
	.then((data)=>{
		res.status(200).json(data.rows[0])
	})
	.catch((err)=>{
		res.status(500).send(err.message)
	})
})

app.get(PREFIX+"/test/getBuild",(req,res)=>{
	db2.query('select * from builds where id=$1 limit 1',[req.query.id])
	.then((data)=>{
		res.status(200).json(data.rows[0])
	})
	.catch((err)=>{
		res.status(500).send(err.message)
	})
})

function buildsGet(req,res,db) {
	function FilterQuery(filter_type,filter){
		function ConvertFilterType(fil) {
			switch(fil) {
				case "author":{return "creator"}break;
				case "build":{return "build_name"}break;
				case "editors_choice":{return "editors_choice"}break;
				case "class1":{return "class1"}break;
				case "class2":{return "class2"}break;
			}
		}
		return `${filter_type?`where ${ConvertFilterType(filter_type)} ilike '%${filter}%'`:""}`
	}
	function SortQuery(sort_type){
		function ConvertSortType(sor) {
			switch (sor) {
				case "date_updated":{return "last_modified desc"}break;
				case "alphabetical":{return "build_name asc"}break;
				case "date_created":{return "created_on desc"}break;
				case "popularity":{return "likes desc"}break
				case "editors_choice":{return "editors_choice desc"}break;
				case "author":{return "creator asc"}break;
			}
		}
		return `${sort_type?`order by ${ConvertSortType(sort_type)}`:""}`
	}
	function OffsetQuery(page){
		return `${page?`offset ${page*20}`:""}`
	}

	//No args gets recent 20 builds.
	//sort_type can be date_updated(default), alphabetical, date_created, popularity, editors_choice, author.
	//filter_type can be author,build,editors_choice,class1,class2
	//filter is the actual contents of the filter.
	//page can be a number, a new page is generated every 20 builds.
	db.query('select * from builds '+FilterQuery(req.query.filter_type,req.query.filter)+' '+SortQuery(req.query.sort_type)+' limit 20 '+OffsetQuery(req.query.page),[])
	.then((data)=>{
		res.status(200).json(data.rows)
	})
	.catch((err)=>{
		res.status(500).send(err.message)
	})
}

app.get(PREFIX+"/getBuilds",(req,res)=>{
	buildsGet(req,res,db)
})

app.get(PREFIX+"/test/getBuilds",(req,res)=>{
	buildsGet(req,res,db2)
})

//Generates our table schema:
ENDPOINTDATA.forEach((endpoint)=>{
	console.log(endpoint.endpoint+":\n\t"+endpoint.requiredfields.join('\t')+(endpoint.optionalfields.length>0?"\t":"")+endpoint.optionalfields.join("\t"))
}) 

CreateDynamicEndpoints()