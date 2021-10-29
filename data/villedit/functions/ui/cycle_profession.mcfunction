execute if entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run data merge entity @s {VillagerData:{profession:"minecraft:armorer"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run data merge entity @s {VillagerData:{profession:"minecraft:butcher"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run data merge entity @s {VillagerData:{profession:"minecraft:cartographer"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run data merge entity @s {VillagerData:{profession:"minecraft:cleric"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run data merge entity @s {VillagerData:{profession:"minecraft:farmer"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run data merge entity @s {VillagerData:{profession:"minecraft:fisherman"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run data merge entity @s {VillagerData:{profession:"minecraft:fletcher"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run data merge entity @s {VillagerData:{profession:"minecraft:leatherworker"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run data merge entity @s {VillagerData:{profession:"minecraft:librarian"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run data merge entity @s {VillagerData:{profession:"minecraft:mason"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run data merge entity @s {VillagerData:{profession:"minecraft:shepherd"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run data merge entity @s {VillagerData:{profession:"minecraft:toolsmith"}}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run data merge entity @s {VillagerData:{profession:"minecraft:weaponsmith"}}

execute if entity @s[tag=!custom_recipes_made] run data merge entity @s {Offers:{Recipes:[]}}

playsound minecraft:ui.button.click master @p