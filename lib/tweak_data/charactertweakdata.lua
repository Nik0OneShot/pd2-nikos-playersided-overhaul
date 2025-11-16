local old_presets = CharacterTweakData._presets
function CharacterTweakData:_presets(tweak_data, ...)
	local presets = old_presets(self, tweak_data, ...)
	
	presets.gang_member_damage = {
		HEALTH_INIT = 200
	}
	presets.gang_member_damage.BLEED_OUT_HEALTH_INIT = presets.gang_member_damage.HEALTH_INIT * 0.5
	presets.gang_member_damage.REGENERATE_TIME = 6
	presets.gang_member_damage.REGENERATE_TIME_AWAY = 6
	presets.gang_member_damage.DOWNED_TIME = tweak_data.player.damage.DOWNED_TIME
	presets.gang_member_damage.TASED_TIME = tweak_data.player.damage.TASED_TIME
	presets.gang_member_damage.ARRESTED_TIME = tweak_data.player.damage.ARRESTED_TIME * 0.5
	presets.gang_member_damage.INCAPACITATED_TIME = tweak_data.player.damage.INCAPACITATED_TIME
	presets.gang_member_damage.hurt_severity = deep_clone(presets.hurt_severities.base)
	presets.gang_member_damage.hurt_severity.bullet = { health_reference = "full", zones = { { health_limit = 0.4, none = 0.6, light = 0.4, }, { light = 1, }, }, }
	presets.gang_member_damage.MIN_DAMAGE_INTERVAL = 0.15
	presets.gang_member_damage.respawn_time_penalty = 0
	presets.gang_member_damage.base_respawn_time_penalty = 5

	presets.move_speed.gang_member = {
			stand = {
				walk = {
					ntl = { strafe = 200, fwd = 200, bwd = 200 },
					hos = { strafe = 200, fwd = 200, bwd = 200 },
					cbt = { strafe = 200, fwd = 200, bwd = 200 } },
				run = {
					hos = { strafe = 400, fwd = 400, bwd = 400 },
					cbt = { strafe = 400, fwd = 400, bwd = 400 } } },
			crouch = {
				walk = {
					hos = { strafe = 200, fwd = 200, bwd = 200 },
					cbt = { strafe = 200, fwd = 200, bwd = 200 } },
				run = {
					hos = { strafe = 400, fwd = 400, bwd = 400 },
					cbt = { strafe = 400, fwd = 400, bwd = 400 } } } }
					
	presets.dodge.gang_member = {
			speed = 0.8,
			occasions = {
				hit = {
					chance = 0.9,
					check_timeout = { 0, 0 },
					variations = {
						roll = { chance = 1, timeout = { 3, 4 } } } },
				preemptive = {
					chance = 0.5,
					check_timeout = { 2, 3 },
					variations = {
						roll = { chance = 1, timeout = { 3, 4 } } } },
				scared = {
					chance = 0.5,
					check_timeout = { 1, 2 },
					variations = {
						roll = { chance = 3, timeout = { 3, 5 } } } } } }
		
	presets.detection.gang_member = { idle = {}, combat = {}, recon = {}, guard = {}, ntl = {} }
	presets.detection.gang_member.idle.dis_max = 10000
	presets.detection.gang_member.idle.angle_max = 240
	presets.detection.gang_member.idle.delay = { 0, 0 }
	presets.detection.gang_member.idle.use_uncover_range = true
	presets.detection.gang_member.combat.dis_max = 10000
	presets.detection.gang_member.combat.angle_max = 240
	presets.detection.gang_member.combat.delay = { 0, 0 }
	presets.detection.gang_member.combat.use_uncover_range = true
	presets.detection.gang_member.recon.dis_max = 10000
	presets.detection.gang_member.recon.angle_max = 240
	presets.detection.gang_member.recon.delay = { 0, 0 }
	presets.detection.gang_member.recon.use_uncover_range = true
	presets.detection.gang_member.guard.dis_max = 10000
	presets.detection.gang_member.guard.angle_max = 240
	presets.detection.gang_member.guard.delay = { 0, 0 }
	presets.detection.gang_member.ntl = presets.detection.normal.ntl
	
	presets.weapon.gang_member = { is_pistol = {} }
	presets.weapon.gang_member.is_pistol.aim_delay = { 0, 0 }
	presets.weapon.gang_member.is_pistol.focus_delay = 1
	presets.weapon.gang_member.is_pistol.focus_dis = 2000
	presets.weapon.gang_member.is_pistol.spread = 25
	presets.weapon.gang_member.is_pistol.miss_dis = 20
	presets.weapon.gang_member.is_pistol.RELOAD_SPEED = 1.5
	presets.weapon.gang_member.is_pistol.melee_speed = 3
	presets.weapon.gang_member.is_pistol.melee_dmg = 3
	presets.weapon.gang_member.is_pistol.melee_retry_delay = presets.weapon.normal.is_pistol.melee_retry_delay
	presets.weapon.gang_member.is_pistol.range = presets.weapon.normal.is_pistol.range
	presets.weapon.gang_member.is_pistol.FALLOFF = {
		{ dmg_mul = 5, r = 700, acc = { 1, 1 }, recoil = { 0.25, 0.45 }, mode = { 0.1, 0.3, 4, 7 } },
		{ dmg_mul = 5, r = 1200, acc = { 1, 1 }, recoil = { 0.4, 0.7 }, mode = { 0.1, 0.3, 4, 7 } },
		{ dmg_mul = 5, r = 10000, acc = { 1, 1 }, recoil = { 0.7, 1 }, mode = { 0.1, 0.3, 4, 7 } } }
	presets.weapon.gang_member.is_revolver = deep_clone(presets.weapon.gang_member.is_pistol)
	presets.weapon.gang_member.is_revolver.FALLOFF = {
		{ dmg_mul = 7.5, r = 700, acc = { 1, 1 }, recoil = { 0.5, 0.9 }, mode = { 0.1, 0.3, 4, 7 } },
		{ dmg_mul = 7.5, r = 1200, acc = { 1, 1 }, recoil = { 0.9, 1.4 }, mode = { 0.1, 0.3, 4, 7 } },
		{ dmg_mul = 7.5, r = 10000, acc = { 1, 1 }, recoil = { 1.5, 2 }, mode = { 0.1, 0.3, 4, 7 } } }
	presets.weapon.gang_member.is_rifle = {
		aim_delay = { 0, 0 },
		focus_delay = 1,
		focus_dis = 3000,
		spread = 25,
		miss_dis = 10,
		RELOAD_SPEED = 1,
		melee_speed = 2,
		melee_dmg = 3,
		melee_retry_delay = presets.weapon.normal.is_rifle.melee_retry_delay,
		range = { optimal = 2500, far = 6000, close = 1500 },
		autofire_rounds = presets.weapon.normal.is_rifle.autofire_rounds,
		FALLOFF = {
			{ dmg_mul = 5, r = 300, acc = { 1, 1 }, recoil = { 0.25, 0.45 }, mode = { 0.1, 0.3, 4, 7 } },
			{ dmg_mul = 5, r = 1000, acc = { 1, 1 }, recoil = { 0.6, 1.1 }, mode = { 0.1, 0.3, 4, 7 } },
			{ dmg_mul = 5, r = 10000, acc = { 1, 1 }, recoil = { 1, 1.5 }, mode = { 0.1, 0.3, 4, 7 } } } }
	presets.weapon.gang_member.is_sniper = {
		aim_delay = { 0, 0 },
		focus_delay = 1,
		focus_dis = 3000,
		spread = 25,
		miss_dis = 10,
		RELOAD_SPEED = 1,
		melee_speed = 2,
		melee_dmg = 3,
		melee_retry_delay = presets.weapon.normal.is_rifle.melee_retry_delay,
		range = { optimal = 4000, far = 6000, close = 2000 },
		FALLOFF = {
			{ dmg_mul = 10, r = 500, acc = { 1, 1 }, recoil = { 1, 1 }, mode = { 1, 0, 0, 0 } },
			{ dmg_mul = 10, r = 1000, acc = { 1, 1 }, recoil = { 2, 3 }, mode = { 1, 0, 0, 0 } },
			{ dmg_mul = 10, r = 10000, acc = { 0.85, 0.9 }, recoil = { 4, 5 }, mode = { 1, 0, 0, 0 } } } }
	presets.weapon.gang_member.is_lmg = {
		aim_delay = { 0, 0 },
		focus_delay = 1,
		focus_dis = 3000,
		spread = 30,
		miss_dis = 10,
		RELOAD_SPEED = 0.7,
		melee_speed = 2,
		melee_dmg = 3,
		melee_retry_delay = presets.weapon.normal.is_lmg.melee_retry_delay,
		range = { optimal = 2500, far = 6000, close = 1500 },
		autofire_rounds = presets.weapon.normal.is_lmg.autofire_rounds,
		FALLOFF = {
			{ dmg_mul = 4, r = 100, acc = { 1, 1 }, recoil = { 0.25, 0.45 }, mode = { 0, 0, 0, 1 } },
			{ dmg_mul = 4, r = 1000, acc = { 0.85, 0.9 }, recoil = { 0.4, 0.65 }, mode = { 0, 0, 0, 1 } },
			{ dmg_mul = 4, r = 10000, acc = { 0.01, 0.1 }, recoil = { 2, 3 }, mode = { 0, 0, 0, 1 } } } }
	presets.weapon.gang_member.is_shotgun_pump = {
		aim_delay = { 0, 0 },
		focus_delay = 1,
		focus_dis = 2000,
		spread = 15,
		miss_dis = 10,
		RELOAD_SPEED = 2,
		melee_speed = 2,
		melee_dmg = 3,
		melee_retry_delay = presets.weapon.normal.is_shotgun_pump.melee_retry_delay,
		range = presets.weapon.normal.is_shotgun_pump.range,
		FALLOFF = {
			{ dmg_mul = 5, r = 300, acc = { 1, 1 }, recoil = { 0.5, 0.9 }, mode = { 0.1, 0.3, 4, 7 } },
			{ dmg_mul = 5, r = 1000, acc = { 1, 1 }, recoil = { 0.9, 1.6 }, mode = { 0.1, 0.3, 4, 7 } },
			{ dmg_mul = 5, r = 10000, acc = { 1, 1 }, recoil = { 1.5, 2 }, mode = { 0.1, 0.3, 4, 7 } } } }
	presets.weapon.gang_member.is_shotgun_mag = {
		aim_delay = { 0, 0 },
		focus_delay = 1,
		focus_dis = 2000,
		spread = 18,
		miss_dis = 10,
		RELOAD_SPEED = 1.6,
		melee_speed = 2,
		melee_dmg = 3,
		melee_retry_delay = presets.weapon.normal.is_shotgun_mag.melee_retry_delay,
		range = presets.weapon.normal.is_shotgun_mag.range,
		autofire_rounds = { 4, 8 },
		FALLOFF = {
			{ dmg_mul = 5, r = 100, acc = { 1, 1 }, recoil = { 0.1, 0.1 }, mode = { 1, 1, 4, 6 } },
			{ dmg_mul = 5, r = 500, acc = { 1, 1 }, recoil = { 0.1, 0.1 }, mode = { 1, 1, 4, 5 } },
			{ dmg_mul = 5, r = 10000, acc = { 0.05, 0.2 }, recoil = { 0.5, 1 },mode = { 2, 1, 0, 0 } } } }
	presets.weapon.gang_member.is_smg = presets.weapon.gang_member.is_rifle
	presets.weapon.gang_member.is_revolver = presets.weapon.gang_member.is_pistol
	presets.weapon.gang_member.is_bullpup = presets.weapon.gang_member.is_rifle
	presets.weapon.gang_member.mac11 = presets.weapon.gang_member.is_smg
	presets.weapon.gang_member.rifle = deep_clone(presets.weapon.gang_member.is_rifle)
	presets.weapon.gang_member.rifle.autofire_rounds = nil
	presets.weapon.gang_member.akimbo_pistol = presets.weapon.gang_member.is_pistol
	presets.weapon.gang_member.is_flamethrower = presets.weapon.normal.is_flamethrower

	return presets
end

function CharacterTweakData:_init_team_ai(presets)
	local team_ai_tweak_names = { "russian", "german", "spanish", "american", "jowi", "old_hoxton", "female_1", "dragan", "jacket", "bonnie", "sokol", "dragon", "bodhi", "jimmy", "sydney", "wild", "chico", "max", "joy", "myh", "ecp_female", "ecp_male" }
	local char_weapon_tables = self.char_wep_tables
	for _, tweak_name in ipairs(team_ai_tweak_names) do
		local char_tweaks = {}
		self[tweak_name] = char_tweaks
		char_tweaks.damage = presets.gang_member_damage
		char_tweaks.weapon = clone(presets.weapon.gang_member)
		char_tweaks.weapon.weapons_of_choice = { primary = "wpn_fps_ass_amcar_npc" }
		char_tweaks.always_face_enemy = true
		char_tweaks.no_run_start = true
		char_tweaks.no_run_stop = true
		char_tweaks.flammable = false
		char_tweaks.crouch_move = false
		char_tweaks.dodge = presets.dodge.gang_member
		char_tweaks.detection = presets.detection.gang_member
		char_tweaks.move_speed = presets.move_speed.gang_member
		char_tweaks.speech_prefix = "rb2"
		char_tweaks.weapon_voice = "1"
		char_tweaks.access = "teamAI1"
		char_tweaks.arrest = { timeout = 240, aggression_timeout = 6, arrest_timeout = 240 }
	end
end