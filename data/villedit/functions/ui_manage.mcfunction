execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:addTrade}}]} run execute positioned ~ ~1 ~ as @e[tag=villager_editing,distance=..1] at @s run function villedit:ui/add_trade
execute unless block ~ ~ ~ barrel{Items:[{tag:{vetype:addTrade}}]} run clear @a diamond_ore{vetype:addTrade}
execute unless block ~ ~ ~ barrel{Items:[{tag:{vetype:addTrade}}]} run data modify block ~ ~ ~ Items append value {Slot: 9b, id: "minecraft:diamond_ore", Count: 1b, tag: {vetype:addTrade,display: {Name: '{"text":"Add Trade","color":"aqua","italic":false}'}}}

execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:removeTrade}}]} run execute positioned ~ ~1 ~ as @e[tag=villager_editing,distance=..1] at @s run function villedit:ui/remove_trade
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:removeTrade}}]} run clear @a redstone_ore{vetype:removeTrade}
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:removeTrade}}]} run data modify block ~ ~ ~ Items append value {Slot: 10b, id: "minecraft:redstone_ore", Count: 1b, tag: {vetype:removeTrade,display: {Name: '{"text":"Remove Trade","color":"red","italic":false}'}}}

execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:profession}}]} run execute positioned ~ ~1 ~ as @e[tag=villager_editing,distance=..1] at @s run function villedit:ui/cycle_profession
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:profession}}]} run clear @a raw_gold{vetype:profession}
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:profession}}]} run data modify block ~ ~ ~ Items append value {Slot: 11b, id: "minecraft:raw_gold", Count: 1b, tag: {vetype:profession,display: {Name: '{"text":"Cycle Professions","color":"gold","italic":false}'}}}

execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:biome}}]} run execute positioned ~ ~1 ~ as @e[tag=villager_editing,distance=..1] at @s run function villedit:ui/cycle_biome
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:biome}}]} run clear @a oak_sapling{vetype:biome}
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:biome}}]} run data modify block ~ ~ ~ Items append value {Slot: 12b, id: "minecraft:oak_sapling", Count: 1b, tag: {vetype:biome,display: {Name: '{"text":"Cycle Biome","color":"dark_green","italic":false}'}}}

execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:level}}]} run execute positioned ~ ~1 ~ as @e[tag=villager_editing,distance=..1] at @s run function villedit:ui/cycle_level
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:level}}]} run clear @a experience_bottle{vetype:level}
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:level}}]} run data modify block ~ ~ ~ Items append value {Slot: 13b, id: "minecraft:experience_bottle", Count: 1b, tag: {vetype:level,display: {Name: '{"text":"Cycle Level","color":"green","italic":false}'}}}

execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:rename}}]} run execute positioned ~ ~1 ~ as @e[tag=villager_editing,distance=..1] at @s run function villedit:ui/rename
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:rename}}]} run clear @a name_tag{vetype:rename}
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:rename}}]} run data modify block ~ ~ ~ Items append value {Slot: 14b, id: "minecraft:name_tag", Count: 1b, tag: {vetype:rename,display: {Name: '{"text":"Rename","color":"yellow","italic":false}'}}}

execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:save}}]} run execute positioned ~ ~1 ~ as @e[tag=villager_editing,distance=..1] at @s run function villedit:ui/save
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:save}}]} run clear @a lime_concrete{vetype:save}
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:save}}]} run data modify block ~ ~ ~ Items append value {Slot: 16b, id: "minecraft:lime_concrete", Count: 1b, tag: {vetype:save,display: {Name: '{"text":"Save","color":"green","italic":false,"bold":true}'}}}

execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:end}}]} run function villedit:ui/end
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:end}}]} run clear @a red_concrete{vetype:end}
execute unless entity @s[tag=ve_addtrade] unless block ~ ~ ~ barrel{Items:[{tag:{vetype:end}}]} run data modify block ~ ~ ~ Items append value {Slot: 17b, id: "minecraft:red_concrete", Count: 1b, tag: {vetype:end,display: {Name: '{"text":"End","color":"red","italic":false,"bold":true}'}}}

execute if entity @s[tag=ve_addtrade] unless block ~ ~ ~ hopper{Items:[{tag:{vetype:"savetrade"}}]} run clear @a lime_concrete{vetype:"savetrade"}
execute if entity @s[tag=ve_addtrade] unless block ~ ~ ~ hopper{Items:[{tag:{vetype:savetrade}}]} run function villedit:ui/properly_add_trade