execute if entity @s[nbt={VillagerData:{level:2}}] run data merge entity @s {VillagerData:{level:1}}

execute if entity @s[nbt={VillagerData:{level:3}}] run data merge entity @s {VillagerData:{level:2}}

execute if entity @s[nbt={VillagerData:{level:4}}] run data merge entity @s {VillagerData:{level:3}}

execute if entity @s[nbt={VillagerData:{level:5}}] run data merge entity @s {VillagerData:{level:4}}

execute if entity @s[nbt={VillagerData:{level:1}}] run data merge entity @s {VillagerData:{level:5}}

playsound minecraft:ui.button.click master @p