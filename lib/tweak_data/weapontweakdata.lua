local FALLOFF_TEMPLATE = WeaponFalloffTemplate.setup_weapon_falloff_templates()

Hooks:PostHook(WeaponTweakData, "init", "weapontweakdata_init", function(self)
	-- allow weapons to go above the vanilla limit in terms of damage.
	self.stats.damage = {}
	for i = 0.1, 50000, 0.1 do table.insert(self.stats.damage, i) end

local kick_tables = {

pistol_low = { standing = { 1, 1, 0.01, 0.01 }, crouching = { 0.8, 0.8, 0.01, 0.01 }, steelsight = { 0.6, 0.6, 0.01, 0.01 }},
pistol_medium = { standing = { 0.8, 0.8, 0.01, 0.01 }, crouching = { 0.6, 0.6, 0.01, 0.01 }, steelsight = { 0.4, 0.4, 0.01, 0.01 }},
pistol_high = { standing = { 0.6, 0.6, 0.01, 0.01 }, crouching = { 0.4, 0.4, 0.01, 0.01 }, steelsight = { 0.2, 0.2, 0.01, 0.01 }},

hand_cannon = { standing = { 1.5, 1.5, 0.01, 0.01 }, crouching = { 1.5, 1.5, 0.01, 0.01 }, steelsight = { 1.5, 1.5, 0.01, 0.01 }},
magnum = { standing = { 1.3, 1.3, 0.01, 0.01 }, crouching = { 1.3, 1.3, 0.01, 0.01 }, steelsight = { 1.3, 1.3, 0.01, 0.01 }},
revolver = { standing = { 1.25, 1.25, 0.01, 0.01 }, crouching = { 1.25, 1.25, 0.01, 0.01 }, steelsight = { 1.25, 1.25, 0.01, 0.01 }},

assault_rifle_low = { standing = { 1.15, 1.15, 0.01, 0.01 }, crouching = { 1.15, 1.15, 0.01, 0.01 }, steelsight = { 1.15, 1.15, 0.01, 0.01 }},
assault_rifle_medium = { standing = { 1.1, 1.1, 0.01, 0.01 }, crouching = { 1.1, 1.1, 0.01, 0.01 }, steelsight = { 1.1, 1.1, 0.01, 0.01 }},
assault_rifle_high = { standing = { 1, 1, 0.01, 0.01 }, crouching = { 1, 1, 0.01, 0.01 }, steelsight = { 1, 1, 0.01, 0.01 }},

cannon = { standing = { 1.5, 1.5, 0.01, 0.01 }, crouching = { 1.4, 1.4, 0.01, 0.01 }, steelsight = { 1.3, 1.3, 0.01, 0.01 }},
dmr = { standing = { 1.4, 1.4, 0.01, 0.01 }, crouching = { 1.3, 1.3, 0.01, 0.01 }, steelsight = { 1.2, 1.2, 0.01, 0.01 }},
battle_rifle = { standing = { 1.3, 1.3, 0.01, 0.01 }, crouching = { 1.2, 1.2, 0.01, 0.01 }, steelsight = { 1.1, 1.1, 0.01, 0.01 }}

}

local ammo_tables = {

pistol_low = 36,
pistol_medium = 48,
pistol_high = 60,

hand_cannon = 18,
magnum = 24,
revolver = 30, 

assault_rifle_low = 120,
assault_rifle_medium = 150,
assault_rifle_high = 180,

cannon = 60,
dmr = 90,
battle_rifle = 120

}

local ammo_pickup_tables = {

pistol_low = { 1, 4 },
pistol_medium = { 1, 5 },
pistol_high = { 1, 6 },

hand_cannon = { 0.1, 0.5 },
magnum = { 0.5, 2 },
revolver = { 1, 2 },

assault_rifle_low = { 2, 6 },
assault_rifle_medium = { 2, 8 },
assault_rifle_high = { 2, 10 },

cannon = { 0.1, 1 },
dmr = { 1, 2 },
battle_rifle = { 1, 4 }

}

-- LOW PISTOLS

-- crosskill

self.colt_1911.CLIP_AMMO_MAX = 7
self.colt_1911.AMMO_MAX = ammo_tables.pistol_low - 1
self.colt_1911.AMMO_PICKUP = ammo_pickup_tables.pistol_low
self.colt_1911.fire_mode_data.fire_rate = 60 / 400
self.colt_1911.stats.damage = 150
self.colt_1911.stats.spread = 14
self.colt_1911.stats.spread_moving = 6
self.colt_1911.stats.recoil = 10
self.colt_1911.stats.concealment = 28
self.colt_1911.stats.suppression = 8

self.colt_1911.kick = kick_tables.pistol_low
self.colt_1911.armor_piercing_chance = 0.3
self.colt_1911.can_shoot_through_enemy = true
self.colt_1911.can_shoot_through_shield = false
self.colt_1911.can_shoot_through_wall = false

-- white streak

self.pl14.CLIP_AMMO_MAX = 12
self.pl14.AMMO_MAX = ammo_tables.pistol_low
self.pl14.AMMO_PICKUP = ammo_pickup_tables.pistol_low
self.pl14.fire_mode_data.fire_rate = 60 / 500
self.pl14.stats.damage = 100
self.pl14.stats.spread = 16
self.pl14.stats.spread_moving = 10
self.pl14.stats.recoil = 8
self.pl14.stats.concealment = 30
self.pl14.stats.suppression = 8

self.pl14.kick = kick_tables.pistol_low
self.pl14.armor_piercing_chance = 0.3
self.pl14.can_shoot_through_enemy = true
self.pl14.can_shoot_through_shield = false
self.pl14.can_shoot_through_wall = false

-- crosskill chunky compact

self.m1911.CLIP_AMMO_MAX = 12
self.m1911.AMMO_MAX = ammo_tables.pistol_low
self.m1911.AMMO_PICKUP = ammo_pickup_tables.pistol_low
self.m1911.fire_mode_data.fire_rate = 60 / 250
self.m1911.stats.damage = 120
self.m1911.stats.spread = 14
self.m1911.stats.spread_moving = 14
self.m1911.stats.recoil = 8
self.m1911.stats.concealment = 30
self.m1911.stats.suppression = 6

self.m1911.kick = kick_tables.pistol_low
self.m1911.armor_piercing_chance = 0.5
self.m1911.can_shoot_through_enemy = true
self.m1911.can_shoot_through_shield = false
self.m1911.can_shoot_through_wall = false

-- chimano custom

self.g22c.CLIP_AMMO_MAX = 17
self.g22c.AMMO_MAX = ammo_tables.pistol_low - 2
self.g22c.AMMO_PICKUP = ammo_pickup_tables.pistol_low
self.g22c.fire_mode_data.fire_rate = 60 / 300
self.g22c.stats.damage = 100
self.g22c.stats.spread = 12
self.g22c.stats.spread_moving = 8
self.g22c.stats.recoil = 12
self.g22c.stats.concealment = 30
self.g22c.stats.suppression = 11

self.g22c.kick = kick_tables.pistol_low
self.g22c.armor_piercing_chance = 0.5
self.g22c.can_shoot_through_enemy = true
self.g22c.can_shoot_through_shield = false
self.g22c.can_shoot_through_wall = false


-- MEDIUM PISTOLS

-- chimano 88

self.glock_17.CLIP_AMMO_MAX = 12
self.glock_17.AMMO_MAX = ammo_tables.pistol_medium
self.glock_17.AMMO_PICKUP = ammo_pickup_tables.pistol_medium
self.glock_17.fire_mode_data.fire_rate = 60 / 800
self.glock_17.stats.damage = 80
self.glock_17.stats.spread = 8
self.glock_17.stats.spread_moving = 4
self.glock_17.stats.recoil = 14
self.glock_17.stats.concealment = 30
self.glock_17.stats.suppression = 12

self.glock_17.kick = kick_tables.pistol_medium
self.glock_17.armor_piercing_chance = 0.3
self.glock_17.can_shoot_through_enemy = true
self.glock_17.can_shoot_through_shield = false
self.glock_17.can_shoot_through_wall = false

-- interceptor

self.usp.CLIP_AMMO_MAX = 12
self.usp.AMMO_MAX = ammo_tables.pistol_medium
self.usp.AMMO_PICKUP = ammo_pickup_tables.pistol_medium
self.usp.fire_mode_data.fire_rate = 60 / 600
self.usp.stats.damage = 94
self.usp.stats.spread = 7
self.usp.stats.spread_moving = 4
self.usp.stats.recoil = 14
self.usp.stats.concealment = 25
self.usp.stats.suppression = 9

self.usp.kick = kick_tables.pistol_medium
self.usp.armor_piercing_chance = 0.5
self.usp.can_shoot_through_enemy = true
self.usp.can_shoot_through_shield = false
self.usp.can_shoot_through_wall = false

-- signature .40

self.p226.CLIP_AMMO_MAX = 12
self.p226.AMMO_MAX = ammo_tables.pistol_medium
self.p226.AMMO_PICKUP = ammo_pickup_tables.pistol_medium
self.p226.fire_mode_data.fire_rate = 60 / 700
self.p226.stats.damage = 85
self.p226.stats.spread = 8
self.p226.stats.spread_moving = 4
self.p226.stats.recoil = 12
self.p226.stats.concealment = 30
self.p226.stats.suppression = 11

self.p226.kick = kick_tables.pistol_medium
self.p226.armor_piercing_chance = 0.2
self.p226.can_shoot_through_enemy = true
self.p226.can_shoot_through_shield = false
self.p226.can_shoot_through_wall = false

-- 5/7 AP

self.lemming.CLIP_AMMO_MAX = 12
self.lemming.AMMO_MAX = ammo_tables.pistol_medium
self.lemming.AMMO_PICKUP = ammo_pickup_tables.pistol_medium
self.lemming.fire_mode_data.fire_rate = 60 / 800
self.lemming.stats.damage = 104
self.lemming.stats.spread = 12
self.lemming.stats.spread_moving = 7
self.lemming.stats.recoil = 8
self.lemming.stats.concealment = 30
self.lemming.stats.suppression = 6

self.lemming.kick = kick_tables.pistol_medium
self.lemming.armor_piercing_chance = 1
self.lemming.can_shoot_through_enemy = true
self.lemming.can_shoot_through_shield = true
self.lemming.can_shoot_through_wall = false


-- HIGH PISTOLS

-- stryk 18c

self.glock_18c.CLIP_AMMO_MAX = 20
self.glock_18c.AMMO_MAX = ammo_tables.pistol_high
self.glock_18c.AMMO_PICKUP = ammo_pickup_tables.pistol_high
self.glock_18c.fire_mode_data.fire_rate = 60 / 1200
self.glock_18c.stats.damage = 64
self.glock_18c.stats.spread = 6
self.glock_18c.stats.spread_moving = 4
self.glock_18c.stats.recoil = 10
self.glock_18c.stats.concealment = 30
self.glock_18c.stats.suppression = 6

self.glock_18c.kick = kick_tables.pistol_high
self.glock_18c.armor_piercing_chance = 0.3
self.glock_18c.can_shoot_through_enemy = true
self.glock_18c.can_shoot_through_shield = false
self.glock_18c.can_shoot_through_wall = false

-- bernetti 9

self.b92fs.CLIP_AMMO_MAX = 15
self.b92fs.AMMO_MAX = ammo_tables.pistol_high
self.b92fs.AMMO_PICKUP = ammo_pickup_tables.pistol_high
self.b92fs.fire_mode_data.fire_rate = 60 / 800
self.b92fs.stats.damage = 70
self.b92fs.stats.spread = 6
self.b92fs.stats.spread_moving = 4
self.b92fs.stats.recoil = 8
self.b92fs.stats.concealment = 30
self.b92fs.stats.suppression = 11

self.b92fs.kick = kick_tables.pistol_high
self.b92fs.armor_piercing_chance = 0.3
self.b92fs.can_shoot_through_enemy = true
self.b92fs.can_shoot_through_shield = false
self.b92fs.can_shoot_through_wall = false

-- gecko M2

self.maxim9.CLIP_AMMO_MAX = 12
self.maxim9.AMMO_MAX = ammo_tables.pistol_high
self.maxim9.AMMO_PICKUP = ammo_pickup_tables.pistol_high
self.maxim9.fire_mode_data.fire_rate = 60 / 600
self.maxim9.stats.damage = 48
self.maxim9.stats.spread = 14
self.maxim9.stats.spread_moving = 8
self.maxim9.stats.recoil = 12
self.maxim9.stats.concealment = 25
self.maxim9.stats.suppression = 18

self.maxim9.kick = kick_tables.pistol_high
self.maxim9.armor_piercing_chance = 1
self.maxim9.can_shoot_through_enemy = true
self.maxim9.can_shoot_through_shield = true
self.maxim9.can_shoot_through_wall = true

-- gruber kurz

self.ppk.CLIP_AMMO_MAX = 7
self.ppk.AMMO_MAX = ammo_tables.pistol_high
self.ppk.AMMO_PICKUP = ammo_pickup_tables.pistol_high
self.ppk.fire_mode_data.fire_rate = 60 / 1000
self.ppk.stats.damage = 68
self.ppk.stats.spread = 4
self.ppk.stats.spread_moving = 4
self.ppk.stats.recoil = 20
self.ppk.stats.concealment = 30
self.ppk.stats.reload = 14
self.ppk.stats.suppression = 18

self.ppk.kick = kick_tables.pistol_high
self.ppk.armor_piercing_chance = 0.3
self.ppk.can_shoot_through_enemy = true
self.ppk.can_shoot_through_shield = false
self.ppk.can_shoot_through_wall = false

-- HAND CANNONS

-- chimano compact

self.g26.CLIP_AMMO_MAX = 4
self.g26.AMMO_MAX = ammo_tables.hand_cannon
self.g26.AMMO_PICKUP = ammo_pickup_tables.hand_cannon
self.g26.fire_mode_data.fire_rate = 60 / 600
self.g26.stats.damage = 850
self.g26.stats.spread = 2
self.g26.stats.spread_moving = 2
self.g26.stats.recoil = 16
self.g26.stats.concealment = 30
self.g26.stats.reload = 14
self.g26.stats.suppression = 1

self.g26.kick = kick_tables.hand_cannon
self.g26.armor_piercing_chance = 1
self.g26.can_shoot_through_enemy = true
self.g26.can_shoot_through_shield = true
self.g26.can_shoot_through_wall = false

-- M13 9mm

self.legacy.CLIP_AMMO_MAX = 6
self.legacy.AMMO_MAX = ammo_tables.hand_cannon
self.legacy.AMMO_PICKUP = ammo_pickup_tables.hand_cannon
self.legacy.fire_mode_data.fire_rate = 60 / 400
self.legacy.stats.damage = 500
self.legacy.stats.spread = 3
self.legacy.stats.spread_moving = 3
self.legacy.stats.recoil = 10
self.legacy.stats.concealment = 30
self.legacy.stats.reload = 14
self.legacy.stats.suppression = 4

self.legacy.kick = kick_tables.hand_cannon
self.legacy.armor_piercing_chance = 1
self.legacy.can_shoot_through_enemy = true
self.legacy.can_shoot_through_shield = true
self.legacy.can_shoot_through_wall = false

-- broomstick

self.c96.CLIP_AMMO_MAX = 10
self.c96.AMMO_MAX = ammo_tables.hand_cannon + 2
self.c96.AMMO_PICKUP = ammo_pickup_tables.hand_cannon
self.c96.fire_mode_data.fire_rate = 60 / 300
self.c96.stats.damage = 350
self.c96.stats.spread = 8
self.c96.stats.spread_moving = 4
self.c96.stats.recoil = 4
self.c96.stats.concealment = 30
self.c96.stats.reload = 11
self.c96.stats.suppression = 5

self.c96.kick = kick_tables.hand_cannon
self.c96.armor_piercing_chance = 1
self.c96.can_shoot_through_enemy = true
self.c96.can_shoot_through_shield = true
self.c96.can_shoot_through_wall = false

-- MAGNUMS

-- kahn .357

self.korth.CLIP_AMMO_MAX = 8
self.korth.AMMO_MAX = ammo_tables.magnum
self.korth.AMMO_PICKUP = ammo_pickup_tables.magnum
self.korth.fire_mode_data.fire_rate = 60 / 300
self.korth.stats.damage = 250
self.korth.stats.spread = 16
self.korth.stats.spread_moving = 6
self.korth.stats.recoil = 4
self.korth.stats.concealment = 30
self.korth.stats.suppression = 4

self.korth.kick = kick_tables.magnum
self.korth.armor_piercing_chance = 1
self.korth.can_shoot_through_enemy = true
self.korth.can_shoot_through_shield = false
self.korth.can_shoot_through_wall = true

-- kang arms model 54

self.type54.CLIP_AMMO_MAX = 7
self.type54.AMMO_MAX = ammo_tables.magnum
self.type54.AMMO_PICKUP = ammo_pickup_tables.magnum
self.type54.fire_mode_data.fire_rate = 60 / 500
self.type54.stats.damage = 200
self.type54.stats.spread = 8
self.type54.stats.spread_moving = 6
self.type54.stats.recoil = 15
self.type54.stats.concealment = 30
self.type54.stats.suppression = 9

self.type54.kick = kick_tables.magnum
self.type54.armor_piercing_chance = 1
self.type54.can_shoot_through_enemy = true
self.type54.can_shoot_through_shield = false
self.type54.can_shoot_through_wall = false

-- kang arms model 54 underbarrel

self.type54_underbarrel.CLIP_AMMO_MAX = 1
self.type54_underbarrel.AMMO_MAX = 3
self.type54_underbarrel.AMMO_PICKUP = ammo_pickup_tables.hand_cannon
self.type54_underbarrel.stats.damage = 1500
self.type54_underbarrel.stats_modifiers = { damage = 1 }

-- parabellum

self.breech.CLIP_AMMO_MAX = 8
self.breech.AMMO_MAX = ammo_tables.magnum
self.breech.AMMO_PICKUP = ammo_pickup_tables.magnum
self.breech.fire_mode_data.fire_rate = 60 / 600
self.breech.stats.damage = 275
self.breech.stats.spread = 12
self.breech.stats.spread_moving = 6
self.breech.stats.recoil = 8
self.breech.stats.concealment = 30
self.breech.stats.suppression = 5

self.breech.kick = kick_tables.magnum
self.breech.armor_piercing_chance = 1
self.breech.can_shoot_through_enemy = true
self.breech.can_shoot_through_shield = false
self.breech.can_shoot_through_wall = false

-- castigo 44

self.chinchilla.CLIP_AMMO_MAX = 6
self.chinchilla.AMMO_MAX = ammo_tables.magnum
self.chinchilla.AMMO_PICKUP = ammo_pickup_tables.magnum
self.chinchilla.fire_mode_data.fire_rate = 60 / 800
self.chinchilla.stats.damage = 250
self.chinchilla.stats.spread = 18
self.chinchilla.stats.spread_moving = 11
self.chinchilla.stats.recoil = 7
self.chinchilla.stats.concealment = 30
self.chinchilla.stats.suppression = 6

self.chinchilla.kick = kick_tables.magnum
self.chinchilla.armor_piercing_chance = 1
self.chinchilla.can_shoot_through_enemy = true
self.chinchilla.can_shoot_through_shield = false
self.chinchilla.can_shoot_through_wall = false


-- REVOLVERS

-- bronco .44

self.new_raging_bull.CLIP_AMMO_MAX = 6
self.new_raging_bull.AMMO_MAX = ammo_tables.revolver
self.new_raging_bull.AMMO_PICKUP = ammo_pickup_tables.revolver
self.new_raging_bull.fire_mode_data.fire_rate = 60 / 200
self.new_raging_bull.stats.damage = 175
self.new_raging_bull.stats.spread = 12
self.new_raging_bull.stats.spread_moving = 6
self.new_raging_bull.stats.recoil = 2
self.new_raging_bull.stats.concealment = 30
self.new_raging_bull.stats.suppression = 6

self.new_raging_bull.kick = kick_tables.revolver
self.new_raging_bull.armor_piercing_chance = 1
self.new_raging_bull.can_shoot_through_enemy = true
self.new_raging_bull.can_shoot_through_shield = false
self.new_raging_bull.can_shoot_through_wall = false

-- baby deagle

self.sparrow.CLIP_AMMO_MAX = 12
self.sparrow.AMMO_MAX = ammo_tables.revolver - 6
self.sparrow.AMMO_PICKUP = ammo_pickup_tables.revolver
self.sparrow.fire_mode_data.fire_rate = 60 / 300
self.sparrow.stats.damage = 150
self.sparrow.stats.spread = 10
self.sparrow.stats.spread_moving = 6
self.sparrow.stats.recoil = 4
self.sparrow.stats.concealment = 30
self.sparrow.stats.suppression = 8

self.sparrow.kick = kick_tables.revolver
self.sparrow.armor_piercing_chance = 1
self.sparrow.can_shoot_through_enemy = true
self.sparrow.can_shoot_through_shield = false
self.sparrow.can_shoot_through_wall = false

-- HIGH RIFLES

-- commando 552

self.s552.CLIP_AMMO_MAX = 30
self.s552.AMMO_MAX = ammo_tables.assault_rifle_high
self.s552.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_high
self.s552.fire_mode_data.fire_rate = 60 / 1200
self.s552.stats.damage = 54
self.s552.stats.spread = 10
self.s552.stats.spread_moving = 8
self.s552.stats.recoil = 12
self.s552.stats.concealment = 20
self.s552.stats.suppression = 11

self.s552.kick = kick_tables.assault_rifle_high
self.s552.armor_piercing_chance = 0.3

-- jp36

self.g36.CLIP_AMMO_MAX = 45
self.g36.AMMO_MAX = ammo_tables.assault_rifle_high
self.g36.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_high
self.g36.fire_mode_data.fire_rate = 60 / 800
self.g36.stats.damage = 54
self.g36.stats.spread = 12
self.g36.stats.spread_moving = 8
self.g36.stats.recoil = 16
self.g36.stats.concealment = 16
self.g36.stats.suppression = 14

self.g36.kick = kick_tables.assault_rifle_high
self.g36.armor_piercing_chance = 0.3

-- bootleg

self.tecci.CLIP_AMMO_MAX = 100
self.tecci.AMMO_MAX = ammo_tables.assault_rifle_high + 20
self.tecci.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_high
self.tecci.fire_mode_data.fire_rate = 60 / 1000
self.tecci.stats.damage = 48
self.tecci.stats.spread = 10
self.tecci.stats.spread_moving = 6
self.tecci.stats.recoil = 19
self.tecci.stats.concealment = 4
self.tecci.stats.suppression = 8

self.tecci.kick = kick_tables.assault_rifle_high
self.tecci.armor_piercing_chance = 0.3

-- clarion

self.famas.CLIP_AMMO_MAX = 30
self.famas.AMMO_MAX = ammo_tables.assault_rifle_high
self.famas.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_high
self.famas.fire_mode_data.fire_rate = 60 / 1200
self.famas.stats.damage = 46
self.famas.stats.spread = 8
self.famas.stats.spread_moving = 4
self.famas.stats.recoil = 16
self.famas.stats.concealment = 11
self.famas.stats.suppression = 10

self.famas.kick = kick_tables.assault_rifle_high
self.famas.armor_piercing_chance = 0.3

-- valkyria

self.asval.CLIP_AMMO_MAX = 20
self.asval.AMMO_MAX = ammo_tables.assault_rifle_high
self.asval.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_high
self.asval.fire_mode_data.fire_rate = 60 / 1000
self.asval.stats.damage = 54
self.asval.stats.spread = 10
self.asval.stats.spread_moving = 10
self.asval.stats.recoil = 15
self.asval.stats.concealment = 17
self.asval.stats.reload = 14
self.asval.stats.suppression = 7

self.asval.kick = kick_tables.assault_rifle_high
self.asval.armor_piercing_chance = 0.6

-- MEDIUM RIFLES

-- amcar

self.amcar.CLIP_AMMO_MAX = 30
self.amcar.AMMO_MAX = ammo_tables.assault_rifle_medium
self.amcar.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_medium
self.amcar.fire_mode_data.fire_rate = 60 / 1000
self.amcar.stats.damage = 64
self.amcar.stats.spread = 16
self.amcar.stats.spread_moving = 10
self.amcar.stats.recoil = 6
self.amcar.stats.concealment = 12
self.amcar.stats.suppression = 7

self.amcar.kick = kick_tables.assault_rifle_medium
self.amcar.armor_piercing_chance = 0.3

-- ak

self.ak74.CLIP_AMMO_MAX = 30
self.ak74.AMMO_MAX = ammo_tables.assault_rifle_medium
self.ak74.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_medium
self.ak74.fire_mode_data.fire_rate = 60 / 600
self.ak74.stats.damage = 68
self.ak74.stats.spread = 14
self.ak74.stats.spread_moving = 9
self.ak74.stats.recoil = 8
self.ak74.stats.concealment = 16
self.ak74.stats.suppression = 8

self.ak74.kick = kick_tables.assault_rifle_medium
self.ak74.armor_piercing_chance = 0.5

-- union 5.56

self.corgi.CLIP_AMMO_MAX = 30
self.corgi.AMMO_MAX = ammo_tables.assault_rifle_medium
self.corgi.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_medium
self.corgi.fire_mode_data.fire_rate = 60 / 800
self.corgi.stats.damage = 62
self.corgi.stats.spread = 14
self.corgi.stats.spread_moving = 9
self.corgi.stats.recoil = 9
self.corgi.stats.concealment = 10
self.corgi.stats.suppression = 6

self.corgi.kick = kick_tables.assault_rifle_medium
self.corgi.armor_piercing_chance = 0.3

-- queens wrath

self.l85a2.CLIP_AMMO_MAX = 45
self.l85a2.AMMO_MAX = ammo_tables.assault_rifle_medium - 15
self.l85a2.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_medium
self.l85a2.fire_mode_data.fire_rate = 60 / 650
self.l85a2.stats.damage = 64
self.l85a2.stats.spread = 12
self.l85a2.stats.spread_moving = 10
self.l85a2.stats.recoil = 8
self.l85a2.stats.concealment = 4
self.l85a2.stats.suppression = 8

self.l85a2.kick = kick_tables.assault_rifle_medium
self.l85a2.armor_piercing_chance = 0.4

-- lions roar

self.vhs.CLIP_AMMO_MAX = 30
self.vhs.AMMO_MAX = ammo_tables.assault_rifle_medium
self.vhs.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_medium
self.vhs.fire_mode_data.fire_rate = 60 / 750
self.vhs.stats.damage = 64
self.vhs.stats.spread = 15
self.vhs.stats.spread_moving = 11
self.vhs.stats.recoil = 10
self.vhs.stats.concealment = 8
self.vhs.stats.suppression = 8

self.vhs.kick = kick_tables.assault_rifle_medium
self.vhs.armor_piercing_chance = 0.3

-- LOW RIFLES

-- car 4

self.new_m4.CLIP_AMMO_MAX = 30
self.new_m4.AMMO_MAX = ammo_tables.assault_rifle_low
self.new_m4.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_low
self.new_m4.fire_mode_data.fire_rate = 60 / 800
self.new_m4.stats.damage = 78
self.new_m4.stats.spread = 18
self.new_m4.stats.spread_moving = 8
self.new_m4.stats.recoil = 10
self.new_m4.stats.concealment = 14
self.new_m4.stats.suppression = 8

self.new_m4.kick = kick_tables.assault_rifle_low
self.new_m4.armor_piercing_chance = 0.3

-- UAR

self.aug.CLIP_AMMO_MAX = 45
self.aug.AMMO_MAX = ammo_tables.assault_rifle_low - 30
self.aug.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_low
self.aug.fire_mode_data.fire_rate = 60 / 600
self.aug.stats.damage = 90
self.aug.stats.spread = 16
self.aug.stats.spread_moving = 11
self.aug.stats.recoil = 8
self.aug.stats.concealment = 10
self.aug.stats.suppression = 6

self.aug.kick = kick_tables.assault_rifle_low
self.aug.armor_piercing_chance = 0.5

-- AK 7.62

self.akm.CLIP_AMMO_MAX = 30
self.akm.AMMO_MAX = ammo_tables.assault_rifle_low
self.akm.AMMO_PICKUP = ammo_pickup_tables.assault_rifle_low
self.akm.fire_mode_data.fire_rate = 60 / 500
self.akm.stats.damage = 84
self.akm.stats.spread = 16
self.akm.stats.spread_moving = 10
self.akm.stats.recoil = 6
self.akm.stats.concealment = 16
self.akm.stats.suppression = 7

self.akm.kick = kick_tables.assault_rifle_low
self.akm.armor_piercing_chance = 0.75

-- CANNONS

-- KETCHNOV byk-1

self.groza.CLIP_AMMO_MAX = 10
self.groza.AMMO_MAX = ammo_tables.cannon
self.groza.AMMO_PICKUP = ammo_pickup_tables.cannon
self.groza.fire_mode_data.fire_rate = 60 / 400
self.groza.stats.damage = 300
self.groza.stats.spread = 14
self.groza.stats.spread_moving = 8
self.groza.stats.recoil = 8
self.groza.stats.concealment = 0
self.groza.stats.suppression = 4

self.groza.kick = kick_tables.cannon
self.groza.armor_piercing_chance = 1
self.groza.can_shoot_through_enemy = true
self.groza.can_shoot_through_shield = false
self.groza.can_shoot_through_wall = false

-- KETCHNOV byk-1 underbarrel

self.groza_underbarrel.CLIP_AMMO_MAX = 1
self.groza_underbarrel.AMMO_MAX = 3
self.groza_underbarrel.AMMO_PICKUP = ammo_pickup_tables.cannon
self.groza_underbarrel.stats.spread = 99
self.groza_underbarrel.stats.spread_moving = 99
self.groza_underbarrel.stats.recoil = 99

-- golden ak7.62

self.akm_gold.CLIP_AMMO_MAX = 10
self.akm_gold.AMMO_MAX = ammo_tables.cannon - 30
self.akm_gold.AMMO_PICKUP = ammo_pickup_tables.cannon
self.akm_gold.fire_mode_data.fire_rate = 60 / 200
self.akm_gold.stats.damage = 600
self.akm_gold.stats.spread = 20
self.akm_gold.stats.spread_moving = 10
self.akm_gold.stats.recoil = 20
self.akm_gold.stats.concealment = 1
self.akm_gold.stats.suppression = 1

self.akm_gold.kick = kick_tables.cannon
self.akm_gold.armor_piercing_chance = 1
self.akm_gold.can_shoot_through_enemy = true
self.akm_gold.can_shoot_through_shield = true
self.akm_gold.can_shoot_through_wall = false

-- DMRS

-- m308

self.new_m14.CLIP_AMMO_MAX = 14
self.new_m14.AMMO_MAX = ammo_tables.dmr - 6
self.new_m14.AMMO_PICKUP = ammo_pickup_tables.dmr
self.new_m14.fire_mode_data.fire_rate = 60 / 400
self.new_m14.stats.damage = 180
self.new_m14.stats.spread = 20
self.new_m14.stats.spread_moving = 12
self.new_m14.stats.recoil = 5
self.new_m14.stats.concealment = 2
self.new_m14.stats.suppression = 2

self.new_m14.kick = kick_tables.dmr
self.new_m14.armor_piercing_chance = 1
self.new_m14.can_shoot_through_enemy = true
self.new_m14.can_shoot_through_shield = false
self.new_m14.can_shoot_through_wall = false

-- cavity 9mm

self.sub2000.CLIP_AMMO_MAX = 20
self.sub2000.AMMO_MAX = ammo_tables.dmr - 10
self.sub2000.AMMO_PICKUP = ammo_pickup_tables.dmr
self.sub2000.fire_mode_data.fire_rate = 60 / 600
self.sub2000.stats.damage = 225
self.sub2000.stats.spread = 16
self.sub2000.stats.spread_moving = 10
self.sub2000.stats.recoil = 12
self.sub2000.stats.concealment = 8
self.sub2000.stats.suppression = 6

self.sub2000.kick = kick_tables.dmr
self.sub2000.armor_piercing_chance = 1
self.sub2000.can_shoot_through_enemy = true
self.sub2000.can_shoot_through_shield = false
self.sub2000.can_shoot_through_wall = false

-- galant

self.ching.CLIP_AMMO_MAX = 8
self.ching.AMMO_MAX = ammo_tables.dmr - 2
self.ching.AMMO_PICKUP = ammo_pickup_tables.dmr
self.ching.fire_mode_data.fire_rate = 60 / 250
self.ching.stats.damage = 265
self.ching.stats.spread = 19
self.ching.stats.spread_moving = 11
self.ching.stats.recoil = 10
self.ching.stats.concealment = 12
self.ching.stats.suppression = 4

self.ching.kick = kick_tables.dmr
self.ching.armor_piercing_chance = 1
self.ching.can_shoot_through_enemy = true
self.ching.can_shoot_through_shield = false
self.ching.can_shoot_through_wall = false

-- BATTLE RIFLES

-- amr 16

self.m16.CLIP_AMMO_MAX = 20
self.m16.AMMO_MAX = ammo_tables.battle_rifle
self.m16.AMMO_PICKUP = ammo_pickup_tables.battle_rifle
self.m16.fire_mode_data.fire_rate = 60 / 1000
self.m16.stats.damage = 100
self.m16.stats.spread = 20
self.m16.stats.spread_moving = 10
self.m16.stats.recoil = 6
self.m16.stats.concealment = 6
self.m16.stats.suppression = 6

self.m16.kick = kick_tables.battle_rifle
self.m16.armor_piercing_chance = 1

-- eagle heavy

self.scar.CLIP_AMMO_MAX = 45
self.scar.AMMO_MAX = ammo_tables.battle_rifle
self.scar.AMMO_PICKUP = ammo_pickup_tables.battle_rifle
self.scar.fire_mode_data.fire_rate = 60 / 450
self.scar.stats.damage = 150
self.scar.stats.spread = 16
self.scar.stats.spread_moving = 10
self.scar.stats.recoil = 10
self.scar.stats.concealment = 4
self.scar.stats.suppression = 4

self.scar.kick = kick_tables.battle_rifle
self.scar.armor_piercing_chance = 1

-- AK17

self.flint.CLIP_AMMO_MAX = 30
self.flint.AMMO_MAX = ammo_tables.battle_rifle
self.flint.AMMO_PICKUP = ammo_pickup_tables.battle_rifle
self.flint.fire_mode_data.fire_rate = 60 / 600
self.flint.stats.damage = 125
self.flint.stats.spread = 14
self.flint.stats.spread_moving = 9
self.flint.stats.recoil = 8
self.flint.stats.concealment = 7
self.flint.stats.suppression = 5

self.flint.kick = kick_tables.battle_rifle
self.flint.armor_piercing_chance = 1

end)
