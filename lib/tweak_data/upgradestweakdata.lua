Hooks:PostHook(UpgradesTweakData, "init", "upgradestweakdata_init", function(self)
	-- armor starts off at "20", values are added on top. "3" > "+30" added for example.
	self.values.player.body_armor.armor = { 0, 4, 6, 8, 10, 12, 18 }
	self.values.player.body_armor.movement = { 1, 0.925, 0.90, 0.825, 0.75, 0.6, 0.5 }
	self.values.player.body_armor.concealment = { 30, 28, 20, 16, 12, 6, 1 }
	self.values.player.body_armor.dodge = { 0.05, 0, -0.05, -0.1, -0.2, -0.25, -0.55 }
	self.values.player.body_armor.damage_shake = { 1, 0.96, 0.92, 0.85, 0.8, 0.7, 0.5 }
	self.values.player.body_armor.stamina = { 1, 0.925, 0.90, 0.825, 0.75, 0.6, 0.5 }
	
	self.explosive_bullet = { curve_pow = 0.5, player_dmg_mul = 0.1, range = 200 * 2 }
	self.explosive_bullet.feedback_range = self.explosive_bullet.range
	
	self.cocaine_stacks_tick_t = 4
	self.cocaine_stacks_decay_t = 4

	self.ecm_jammer_base_battery_life = 20
	self.ecm_jammer_base_low_battery_life = 5
	self.ecm_jammer_base_range = 2500
	self.ecm_feedback_min_duration = 20
	self.ecm_feedback_max_duration = 20
	self.ecm_feedback_interval = 1

	self.ecm_feedback_retrigger_interval = 90
	self.ecm_feedback_retrigger_chance = 1
	
	self.values.player.pocket_ecm_jammer_base = {
		{
			affects_cameras = true,
			cooldown_drain = 2,
			affects_pagers = true,
			feedback_interval = 1,
			duration = 6,
			feedback_range = 2500
		}
	}
	
	self.loose_ammo_restore_health_values = {
		{ 4, 4 },
		{ 8, 8 },
		{ 12, 12 },
		multiplier = 0.2,
		cd = 3,
		base = 8
	}
	
	self.values.player.unseen_increased_crit_chance = {
		{
			min_time = 4,
			max_duration = 6,
			crit_chance = 1.2
		},
		{
			min_time = 4,
			max_duration = 8,
			crit_chance = 1.2
		}
	}
	self.skill_descs.unseen_strike.multibasic2 = "20%"
	self.skill_descs.unseen_strike.multipro = "8"
	
	self.values.player.detection_risk_add_crit_chance = {
		{ 0.01, 3, "below", 35, 0.3 },
		{ 0.02, 3, "below", 35, 0.3 } }
	
	self.skill_descs.backstab.multibasic = "1"
	self.skill_descs.backstab.multibasic4 = "10"
	self.skill_descs.backstab.multipro = "2"
	self.skill_descs.backstab.multipro4 = "20"

	self.values.team.crew_inspire = { { 360, 360, 360 } }
end)
