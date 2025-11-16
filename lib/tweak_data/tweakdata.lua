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

-- grenades

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

self.projectiles.frag_com.damage = 200
self.projectiles.frag_com.launch_speed = 400
self.projectiles.frag_com.player_damage = 10

self.projectiles.dada_com.damage = 200
self.projectiles.dada_com.launch_speed = 400
self.projectiles.dada_com.player_damage = 10

self.projectiles.wpn_gre_electric.damage = 50

-- launchers

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

-- arrows/bolts

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

-- throwable weapons

self.projectiles.wpn_prj_four.damage = 50
self.projectiles.wpn_prj_four.launch_speed = 2000

self.projectiles.wpn_prj_ace.damage = 10
self.projectiles.wpn_prj_ace.launch_speed = 4000

self.projectiles.wpn_prj_jav.damage = 400

self.projectiles.wpn_prj_jav.launch_speed = 2000

self.projectiles.wpn_prj_target.damage = 100
self.projectiles.wpn_prj_target.launch_speed = 1000


