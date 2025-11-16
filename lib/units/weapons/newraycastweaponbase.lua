-- code taken from Make Shotguns Great Again by NikitaWasTaken https://github.com/nikitawastaken/msga

Hooks:PostHook(NewRaycastWeaponBase, "_update_stats_values", "newraycastweaponbase_update_stats_values", function(self)
	self._optimal_distance = 0
	self._optimal_range = 0
end)