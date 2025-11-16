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
tweak_data.projectiles.wpn_gre_electric.launch_speed = 400
tweak_data.projectiles.wpn_gre_electric.player_damage = 10

tweak_data.projectiles.poison_gas_grenade.damage = 25
tweak_data.projectiles.poison_gas_grenade.launch_speed = 400
tweak_data.projectiles.poison_gas_grenade.poison_gas_duration = 10

tweak_data.projectiles.sticky_grenade.damage = 400
tweak_data.projectiles.sticky_grenade.launch_speed = 400
tweak_data.projectiles.sticky_grenade.player_damage = 20

-- launchers

tweak_data.projectiles.launcher_rocket.damage = 2000
tweak_data.projectiles.launcher_rocket.launch_speed = 5000
tweak_data.projectiles.launcher_rocket.player_damage = 20

tweak_data.projectiles.rocket_frag.damage = 2000
tweak_data.projectiles.rocket_frag.launch_speed = 5000
tweak_data.projectiles.rocket_frag.player_damage = 25

tweak_data.projectiles.rocket_ray_frag.damage = 500
tweak_data.projectiles.rocket_ray_frag.launch_speed = 5000
tweak_data.projectiles.rocket_ray_frag.player_damage = 25

tweak_data.projectiles.launcher_frag.damage = 150
tweak_data.projectiles.launcher_frag.launch_speed = 1000
tweak_data.projectiles.launcher_frag.player_damage = 15

tweak_data.projectiles.launcher_incendiary.damage = 10
tweak_data.projectiles.launcher_incendiary.launch_speed = 1000
tweak_data.projectiles.launcher_incendiary.player_damage = 5

tweak_data.projectiles.launcher_frag_m32.damage = 150
tweak_data.projectiles.launcher_frag_m32.launch_speed = 1000
tweak_data.projectiles.launcher_frag_m32.player_damage = 15

tweak_data.projectiles.launcher_frag_china.damage = 150
tweak_data.projectiles.launcher_frag_china.launch_speed = 1000
tweak_data.projectiles.launcher_frag_china.player_damage = 15

tweak_data.projectiles.launcher_frag_arbiter.damage = 150
tweak_data.projectiles.launcher_frag_arbiter.launch_speed = 2000
tweak_data.projectiles.launcher_frag_arbiter.player_damage = 15

tweak_data.projectiles.launcher_incendiary_arbiter.damage = 10
tweak_data.projectiles.launcher_incendiary_arbiter.launch_speed = 2000
tweak_data.projectiles.launcher_incendiary_arbiter.player_damage = 5

tweak_data.projectiles.launcher_electric.damage = 75
tweak_data.projectiles.launcher_electric.launch_speed = 1000
tweak_data.projectiles.launcher_electric.player_damage = 7

tweak_data.projectiles.launcher_electric_m32.damage = 75
tweak_data.projectiles.launcher_electric_m32.launch_speed = 1000
tweak_data.projectiles.launcher_electric_m32.player_damage = 7

tweak_data.projectiles.launcher_electric_china.damage = 75
tweak_data.projectiles.launcher_electric_china.launch_speed = 1000
tweak_data.projectiles.launcher_electric_china.player_damage = 7

tweak_data.projectiles.launcher_electric_slap.damage = 75
tweak_data.projectiles.launcher_electric_slap.launch_speed = 1000
tweak_data.projectiles.launcher_electric_slap.player_damage = 7

tweak_data.projectiles.launcher_electric_arbiter.damage = 75
tweak_data.projectiles.launcher_electric_arbiter.launch_speed = 2000
tweak_data.projectiles.launcher_electric_arbiter.player_damage = 7

tweak_data.projectiles.underbarrel_electric.damage = 75
tweak_data.projectiles.underbarrel_electric.launch_speed = 1000
tweak_data.projectiles.underbarrel_electric.player_damage = 7

tweak_data.projectiles.launcher_poison.damage = 25
tweak_data.projectiles.launcher_poison.launch_speed = 1000
tweak_data.projectiles.launcher_poison.player_damage = 5
tweak_data.projectiles.launcher_poison.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_ms3gl_conversion.damage = 25
tweak_data.projectiles.launcher_poison_ms3gl_conversion.launch_speed = 1000
tweak_data.projectiles.launcher_poison_ms3gl_conversion.player_damage = 5
tweak_data.projectiles.launcher_poison_ms3gl_conversion.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_gre_m79.damage = 25
tweak_data.projectiles.launcher_poison_gre_m79.launch_speed = 1000
tweak_data.projectiles.launcher_poison_gre_m79.player_damage = 5
tweak_data.projectiles.launcher_poison_gre_m79.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_m32.damage = 25
tweak_data.projectiles.launcher_poison_m32.launch_speed = 1000
tweak_data.projectiles.launcher_poison_m32.player_damage = 5
tweak_data.projectiles.launcher_poison_m32.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_groza.damage = 25
tweak_data.projectiles.launcher_poison_groza.launch_speed = 1000
tweak_data.projectiles.launcher_poison_groza.player_damage = 5
tweak_data.projectiles.launcher_poison_groza.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_china.damage = 25
tweak_data.projectiles.launcher_poison_china.launch_speed = 1000
tweak_data.projectiles.launcher_poison_china.player_damage = 5
tweak_data.projectiles.launcher_poison_china.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_arbiter.damage = 25
tweak_data.projectiles.launcher_poison_arbiter.launch_speed = 2000
tweak_data.projectiles.launcher_poison_arbiter.player_damage = 5
tweak_data.projectiles.launcher_poison_arbiter.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_slap.damage = 25
tweak_data.projectiles.launcher_poison_slap.launch_speed = 1000
tweak_data.projectiles.launcher_poison_slap.player_damage = 5
tweak_data.projectiles.launcher_poison_slap.poison_gas_duration = 10

tweak_data.projectiles.launcher_poison_contraband.damage = 25
tweak_data.projectiles.launcher_poison_contraband.launch_speed = 1000
tweak_data.projectiles.launcher_poison_contraband.player_damage = 5
tweak_data.projectiles.launcher_poison_contraband.poison_gas_duration = 10

tweak_data.projectiles.launcher_frag_ms3gl.damage = 150
tweak_data.projectiles.launcher_frag_ms3gl.launch_speed = 1000
tweak_data.projectiles.launcher_frag_ms3gl.player_damage = 15

tweak_data.projectiles.launcher_incendiary_ms3gl.damage = 10
tweak_data.projectiles.launcher_incendiary_ms3gl.launch_speed = 1000
tweak_data.projectiles.launcher_incendiary_ms3gl.player_damage = 5

tweak_data.projectiles.launcher_electric_ms3gl.damage = 75
tweak_data.projectiles.launcher_electric_ms3gl.launch_speed = 1000
tweak_data.projectiles.launcher_electric_ms3gl.player_damage = 7

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

tweak_data.projectiles.xmas_snowball.damage = 20
