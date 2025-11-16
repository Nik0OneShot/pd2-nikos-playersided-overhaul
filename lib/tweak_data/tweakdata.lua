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

tweak_data.projectiles.fir_com.damage = 0
tweak_data.projectiles.fir_com.launch_speed = 400
tweak_data.projectiles.fir_com.player_damage = 0

tweak_data.projectiles.dynamite.damage = 400
tweak_data.projectiles.dynamite.launch_speed = 250
tweak_data.projectiles.dynamite.player_damage = 20

tweak_data.projectiles.frag_com.damage = 200
tweak_data.projectiles.frag_com.launch_speed = 400
tweak_data.projectiles.frag_com.player_damage = 10

tweak_data.projectiles.dada_com.damage = 200
tweak_data.projectiles.dada_com.launch_speed = 400
tweak_data.projectiles.dada_com.player_damage = 10

tweak_data.projectiles.wpn_gre_electric.damage = 50

-- launchers

tweak_data.projectiles.launcher_frag.damage = 150
tweak_data.projectiles.launcher_frag.launch_speed = 1000
tweak_data.projectiles.launcher_frag.player_damage = 10

tweak_data.projectiles.launcher_rocket.damage = 2000
tweak_data.projectiles.launcher_rocket.launch_speed = 2000
tweak_data.projectiles.launcher_rocket.player_damage = 20

tweak_data.projectiles.launcher_incendiary.damage = 10
tweak_data.projectiles.launcher_incendiary.launch_speed = 1000
tweak_data.projectiles.launcher_incendiary.player_damage = 10

tweak_data.projectiles.launcher_frag_m32.damage = 150

tweak_data.projectiles.launcher_frag_china.damage = 150

tweak_data.projectiles.launcher_frag_arbiter.damage = 150
tweak_data.projectiles.launcher_frag_arbiter.launch_speed = 2000
tweak_data.projectiles.launcher_frag_arbiter.player_damage = 10

tweak_data.projectiles.launcher_incendiary_arbiter.damage = 10
tweak_data.projectiles.launcher_incendiary_arbiter.launch_speed = 2000
tweak_data.projectiles.launcher_incendiary_arbiter.player_damage = 10

tweak_data.projectiles.rocket_frag.damage = 2000
tweak_data.projectiles.rocket_frag.launch_speed = 2000
tweak_data.projectiles.rocket_frag.player_damage = 10

tweak_data.projectiles.rocket_ray_frag.damage = 500

tweak_data.projectiles.launcher_electric.damage = 75
tweak_data.projectiles.launcher_electric.launch_speed = 2000
tweak_data.projectiles.launcher_electric.player_damage = 10

tweak_data.projectiles.launcher_electric_m32.damage = 75
tweak_data.projectiles.launcher_electric_m32.launch_speed = 2000
tweak_data.projectiles.launcher_electric_m32.player_damage = 10

tweak_data.projectiles.launcher_electric_china.damage = 75
tweak_data.projectiles.launcher_electric_china.launch_speed = 2000
tweak_data.projectiles.launcher_electric_china.player_damage = 10

tweak_data.projectiles.launcher_electric_slap.damage = 75
tweak_data.projectiles.launcher_electric_slap.launch_speed = 2000
tweak_data.projectiles.launcher_electric_slap.player_damage = 10

tweak_data.projectiles.launcher_electric_arbiter.damage = 75
tweak_data.projectiles.launcher_electric_arbiter.launch_speed = 2000
tweak_data.projectiles.launcher_electric_arbiter.player_damage = 10

tweak_data.projectiles.underbarrel_electric.damage = 75
tweak_data.projectiles.underbarrel_electric.launch_speed = 2000
tweak_data.projectiles.underbarrel_electric.player_damage = 10

-- arrows/bolts

tweak_data.projectiles.west_arrow.damage = 100
tweak_data.projectiles.west_arrow.launch_speed = 2000

tweak_data.projectiles.west_arrow_exp.damage = 50
tweak_data.projectiles.west_arrow_exp.player_damage = 10

tweak_data.projectiles.bow_poison_arrow.damage = 5

tweak_data.projectiles.crossbow_arrow.damage = 100
tweak_data.projectiles.crossbow_arrow.launch_speed = 2000

tweak_data.projectiles.crossbow_poison_arrow.damage = 5

tweak_data.projectiles.crossbow_arrow_exp.damage = 50
tweak_data.projectiles.crossbow_arrow_exp.player_damage = 10

tweak_data.projectiles.arblast_arrow.damage = 200
tweak_data.projectiles.arblast_arrow.launch_speed = 2000

tweak_data.projectiles.arblast_poison_arrow.damage = 10

tweak_data.projectiles.arblast_arrow_exp.damage = 100
tweak_data.projectiles.arblast_arrow_exp.player_damage = 10

tweak_data.projectiles.frankish_arrow.damage = 50
tweak_data.projectiles.frankish_arrow.launch_speed = 4000

tweak_data.projectiles.frankish_poison_arrow.damage = 5

tweak_data.projectiles.frankish_arrow_exp.damage = 25
tweak_data.projectiles.frankish_arrow_exp.player_damage = 5

tweak_data.projectiles.long_arrow.damage = 200
tweak_data.projectiles.long_arrow.launch_speed = 2000

tweak_data.projectiles.long_poison_arrow.damage = 10

tweak_data.projectiles.long_arrow_exp.damage = 100
tweak_data.projectiles.long_arrow_exp.player_damage = 10

tweak_data.projectiles.ecp_arrow.damage = 100
tweak_data.projectiles.ecp_arrow.launch_speed = 2000

tweak_data.projectiles.ecp_arrow_poison.damage = 5

tweak_data.projectiles.ecp_arrow_exp.damage = 50
tweak_data.projectiles.ecp_arrow_exp.player_damage = 5

tweak_data.projectiles.elastic_arrow.damage = 200
tweak_data.projectiles.elastic_arrow.launch_speed = 2000

tweak_data.projectiles.elastic_arrow_poison.damage = 10

tweak_data.projectiles.elastic_arrow_exp.damage = 100
tweak_data.projectiles.elastic_arrow_exp.player_damage = 10

-- throwable weapons

tweak_data.projectiles.wpn_prj_four.damage = 50
tweak_data.projectiles.wpn_prj_four.launch_speed = 2000

tweak_data.projectiles.wpn_prj_ace.damage = 10
tweak_data.projectiles.wpn_prj_ace.launch_speed = 4000

tweak_data.projectiles.wpn_prj_jav.damage = 400

tweak_data.projectiles.wpn_prj_jav.launch_speed = 2000

tweak_data.projectiles.wpn_prj_target.damage = 100
tweak_data.projectiles.wpn_prj_target.launch_speed = 1000



