-- code taken from Make Shotguns Great Again by NikitaWasTaken https://github.com/nikitawastaken/msga

Hooks:PostHook(FireTweakData, "_init_dot_entries_fire", "firetweakdata_init_dot_entries_fire", function(self)
	self.dot_entries.fire.ammo_dragons_breath.dot_trigger_max_distance = 3000 -- restore old db range
end)