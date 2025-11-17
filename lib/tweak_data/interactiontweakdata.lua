Hooks:PostHook(InteractionTweakData, "init", "interactiontweakdata_init", function(self)
	self.gage_assignment.timer = 0 -- instantly pickup gage packages
end)