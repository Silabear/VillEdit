execute if entity @s[nbt={VillagerData:{type:"minecraft:jungle"}}] run data merge entity @s {VillagerData:{type:"minecraft:desert"}}

execute if entity @s[nbt={VillagerData:{type:"minecraft:plains"}}] run data merge entity @s {VillagerData:{type:"minecraft:jungle"}}

execute if entity @s[nbt={VillagerData:{type:"minecraft:savanna"}}] run data merge entity @s {VillagerData:{type:"minecraft:plains"}}

execute if entity @s[nbt={VillagerData:{type:"minecraft:snow"}}] run data merge entity @s {VillagerData:{type:"minecraft:savanna"}}

execute if entity @s[nbt={VillagerData:{type:"minecraft:swamp"}}] run data merge entity @s {VillagerData:{type:"minecraft:snow"}}

execute if entity @s[nbt={VillagerData:{type:"minecraft:taiga"}}] run data merge entity @s {VillagerData:{type:"minecraft:swamp"}}

execute if entity @s[nbt={VillagerData:{type:"minecraft:desert"}}] run data merge entity @s {VillagerData:{type:"minecraft:taiga"}}

playsound minecraft:ui.button.click master @p