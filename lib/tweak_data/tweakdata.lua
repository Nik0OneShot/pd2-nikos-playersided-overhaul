-- progression stuff

tweak_data.difficulty_level_locks = { 0, 0, 10, 20, 30, 50, 60, 100 } -- easy, normal, hard, very hard, overkill, mayhem, death wish, death sentence.
tweak_data.experience_manager.loot_drop_value = { xp10 = 4000, xp15 = 8000, xp20 = 16000, -- card drops for experience.
											xp30 = 32000, xp40 = 64000, xp50 = 128000,
											xp60 = 256000, xp70 = 512000, xp80 = 1024000,
											xp90 = 2048000, xp100 = 4096000, xp_pda9_1 = 8192000,
											xp_pda9_2 = 16384000 }
tweak_data.experience_manager.stage_failed_multiplier = 0.1 -- if failed a day/heist, multiply experience by (x). (0.1 > 10%)
tweak_data.experience_manager.in_custody_multiplier = 0.5 -- if in custody, multiply experience by (x). (0.5 > 50%)
tweak_data.experience_manager.pro_job_multiplier = 1 -- does nothing
tweak_data.experience_manager.difficulty_multiplier = { 3, 6, 9, 12, 15, 50 } -- hard, very hard, overkill, mayhem, death wish, death sentence.
tweak_data.experience_manager.alive_humans_multiplier = { [0] = 1, 1, 1, 1, 1 }
tweak_data.experience_manager.limited_bonus_multiplier = 1
tweak_data.experience_manager.limited_xmas_bonus_multiplier = 1.15
tweak_data.experience_manager.level_limit = { low_cap_level = -1, low_cap_multiplier = 0.75, pc_difference_multipliers = { 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1, 0.01 } }
tweak_data.experience_manager.civilians_killed = 0
tweak_data.experience_manager.day_multiplier = { 1, 1, 3, 1, 1, 1, 7 } -- day multipliers. days don't usually go up to 7, but just in case.
tweak_data.experience_manager.pro_day_multiplier = { 1, 1, 1, 1, 1, 1, 1 } -- does nothing
tweak_data.experience_manager.total_level_objectives = 500
tweak_data.experience_manager.total_criminals_finished = 50
tweak_data.experience_manager.total_objectives_finished = 500
tweak_data.experience_manager.levels = {}


-- level curves, these are what dictate how fast or slow you level.
-- formula is taken from nikitawastaken, from his mod "eclipse". (dev-progression branch) https://github.com/nikitawastaken/Eclipse-Difficulty
local multiplier = 1
local exp_step_start = 1
local exp_step_end = 100
local exp_step = 1 / (exp_step_end - exp_step_start)
local exp_step_last_points = 5000
local exp_step_curve = 1.5

for i = exp_step_start, exp_step_end do
	tweak_data.experience_manager.levels[i] = {
		points = math.round((500000 - exp_step_last_points) * math.pow(exp_step * (i - exp_step_start), exp_step_curve) + exp_step_last_points) * multiplier
	}
end

tweak_data:digest_recursive(tweak_data.experience_manager)

-- taken from original pack, made by "MyNameIsNotJames". https://github.com/Jamemes/Original-Pack
-- this code increases explosion radiuses by 2x.

for id, _ in pairs(tweak_data.projectiles) do
	local projectile = tweak_data.projectiles[id]
	if projectile.range then
		if projectile.range >= 50 then
			projectile.range = projectile.range * 2
		end
	end
end

-- todo: snowball, poison

tweak_data.projectiles.frag.damage = 200
tweak_data.projectiles.frag.launch_speed = 400
tweak_data.projectiles.frag.player_damage = 10

tweak_data.projectiles.molotov.damage = 0
tweak_data.projectiles.molotov.launch_speed = 400
tweak_data.projectiles.molotov.player_damage = 0

tweak_data.projectiles.cs_grenade_quick.damage = 0
tweak_data.projectiles.cs_grenade_quick.launch_speed = 400
tweak_data.projectiles.cs_grenade_quick.player_damage = 0

self.projectiles.fir_com.damage = 0
self.projectiles.fir_com.launch_speed = 400
self.projectiles.fir_com.player_damage = 0

self.projectiles.dynamite.damage = 400
self.projectiles.dynamite.launch_speed = 250
self.projectiles.dynamite.player_damage = 20

self.projectiles.wpn_prj_target.damage = 100
self.projectiles.wpn_prj_target.launch_speed = 1000

self.projectiles.frag_com.damage = 200
self.projectiles.frag_com.launch_speed = 400
self.projectiles.frag_com.player_damage = 10

self.projectiles.dada_com.damage = 200
self.projectiles.dada_com.launch_speed = 400
self.projectiles.dada_com.player_damage = 10

self.projectiles.wpn_gre_electric.damage = 50




tweak_data.projectiles.launcher_frag.damage = 150
tweak_data.projectiles.launcher_frag.launch_speed = 1000
tweak_data.projectiles.launcher_frag.player_damage = 10

tweak_data.projectiles.launcher_rocket.damage = 2000
tweak_data.projectiles.launcher_rocket.launch_speed = 2000
tweak_data.projectiles.launcher_rocket.player_damage = 20

self.projectiles.launcher_incendiary.damage = 10
self.projectiles.launcher_incendiary.launch_speed = 1000
self.projectiles.launcher_incendiary.player_damage = 10

self.projectiles.launcher_frag_m32.damage = 150

self.projectiles.launcher_frag_china.damage = 150

self.projectiles.launcher_frag_arbiter.damage = 150
self.projectiles.launcher_frag_arbiter.launch_speed = 2000
self.projectiles.launcher_frag_arbiter.player_damage = 10

self.projectiles.launcher_incendiary_arbiter.damage = 10
self.projectiles.launcher_incendiary_arbiter.launch_speed = 2000
self.projectiles.launcher_incendiary_arbiter.player_damage = 10

self.projectiles.rocket_frag.damage = 2000
self.projectiles.rocket_frag.launch_speed = 2000
self.projectiles.rocket_frag.player_damage = 10

self.projectiles.rocket_ray_frag.damage = 500

self.projectiles.launcher_electric.damage = 75
self.projectiles.launcher_electric.launch_speed = 2000
self.projectiles.launcher_electric.player_damage = 10

self.projectiles.launcher_electric_m32.damage = 75
self.projectiles.launcher_electric_m32.launch_speed = 2000
self.projectiles.launcher_electric_m32.player_damage = 10

self.projectiles.launcher_electric_china.damage = 75
self.projectiles.launcher_electric_china.launch_speed = 2000
self.projectiles.launcher_electric_china.player_damage = 10

self.projectiles.launcher_electric_slap.damage = 75
self.projectiles.launcher_electric_slap.launch_speed = 2000
self.projectiles.launcher_electric_slap.player_damage = 10

self.projectiles.launcher_electric_arbiter.damage = 75
self.projectiles.launcher_electric_arbiter.launch_speed = 2000
self.projectiles.launcher_electric_arbiter.player_damage = 10

self.projectiles.underbarrel_electric.damage = 75
self.projectiles.underbarrel_electric.launch_speed = 2000
self.projectiles.underbarrel_electric.player_damage = 10









self.projectiles.west_arrow.damage = 100
self.projectiles.west_arrow.launch_speed = 2000

self.projectiles.west_arrow_exp.damage = 50
self.projectiles.west_arrow_exp.player_damage = 10


self.projectiles.bow_poison_arrow.damage = 5

self.projectiles.crossbow_arrow.damage = 100
self.projectiles.crossbow_arrow.launch_speed = 2000

self.projectiles.crossbow_poison_arrow.damage = 5

self.projectiles.crossbow_arrow_exp.damage = 50
self.projectiles.crossbow_arrow_exp.player_damage = 10

self.projectiles.arblast_arrow.damage = 200
self.projectiles.arblast_arrow.launch_speed = 2000

self.projectiles.arblast_poison_arrow.damage = 10

self.projectiles.arblast_arrow_exp.damage = 100
self.projectiles.arblast_arrow_exp.player_damage = 10

self.projectiles.frankish_arrow.damage = 50
self.projectiles.frankish_arrow.launch_speed = 4000

self.projectiles.frankish_poison_arrow.damage = 5

self.projectiles.frankish_arrow_exp.damage = 25
self.projectiles.frankish_arrow_exp.player_damage = 5

self.projectiles.long_arrow.damage = 200
self.projectiles.long_arrow.launch_speed = 2000

self.projectiles.long_poison_arrow.damage = 10

self.projectiles.long_arrow_exp.damage = 100
self.projectiles.long_arrow_exp.player_damage = 10

self.projectiles.ecp_arrow.damage = 100
self.projectiles.ecp_arrow.launch_speed = 2000

self.projectiles.ecp_arrow_poison.damage = 5

self.projectiles.ecp_arrow_exp.damage = 50
self.projectiles.ecp_arrow_exp.player_damage = 5

self.projectiles.elastic_arrow.damage = 200
self.projectiles.elastic_arrow.launch_speed = 2000

self.projectiles.elastic_arrow_poison.damage = 10

self.projectiles.elastic_arrow_exp.damage = 100
self.projectiles.elastic_arrow_exp.player_damage = 10



self.projectiles.wpn_prj_four.damage = 50
self.projectiles.wpn_prj_four.launch_speed = 2000

self.projectiles.wpn_prj_ace.damage = 10
self.projectiles.wpn_prj_ace.launch_speed = 4000

self.projectiles.wpn_prj_jav.damage = 400
self.projectiles.wpn_prj_jav.launch_speed = 2000