function PlayerTweakData:_set_singleplayer()
	-- self.damage.REGENERATE_TIME = 1.75
end

Hooks:PostHook(PlayerTweakData, "init", "playertweakdata_init", function(self, tweak_data)
	self.put_on_mask_time = 0
	self.gravity = -1275

	self.movement_state.standard.movement.speed.STANDARD_MAX = 300
	self.movement_state.standard.movement.speed.RUNNING_MAX = 600
	self.movement_state.standard.movement.speed.CROUCHING_MAX = 200
	self.movement_state.standard.movement.speed.STEELSIGHT_MAX = 200
	self.movement_state.standard.movement.speed.INAIR_MAX = 200
	self.movement_state.standard.movement.speed.CLIMBING_MAX = 200
	self.movement_state.standard.movement.jump_velocity.z = 500
	self.movement_state.standard.movement.jump_velocity.xy.run = 600 * 1
	self.movement_state.standard.movement.jump_velocity.xy.walk = 300 * 1.2
end)