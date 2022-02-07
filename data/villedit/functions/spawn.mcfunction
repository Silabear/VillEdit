execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ barrel{Items:[{Slot:9b,id:"minecraft:diamond_ore",Count:1b,tag:{vetype:addTrade,display:{Name:'{"text":"Add Trade","color":"aqua","italic":false}'}}},{Slot:10b,id:"minecraft:redstone_ore",Count:1b,tag:{vetype:removeTrade,display:{Name:'{"text":"Remove Trade","color":"red","italic":false}'}}},{Slot:11b,id:"minecraft:raw_gold",Count:1b,tag:{vetype:profession,display:{Name:'{"text":"Cycle Professions","color":"gold","italic":false}'}}},{Slot:12b,id:"minecraft:oak_sapling",Count:1b,tag:{vetype:biome,display:{Name:'{"text":"Cycle Biome","color":"dark_green","italic":false}'}}},{Slot:13b,id:"minecraft:experience_bottle",Count:1b,tag:{vetype:level,display:{Name:'{"text":"Cycle Level","color":"green","italic":false}'}}},{Slot:14b,id:"minecraft:name_tag",Count:1b,tag:{vetype:rename,display:{Name:'{"text":"Rename","color":"yellow","italic":false}'}}},{Slot:16b,id:"minecraft:lime_concrete",Count:1b,tag:{vetype:save,display:{Name:'{"text":"Save","color":"green","italic":false,"bold":true}'}}},{Slot:17b,id:"minecraft:red_concrete",Count:1b,tag:{vetype:end,display:{Name:'{"text":"End","color":"red","italic":false,"bold":true}'}}}],CustomName:'{"text":"Change Villager Settings","color":"dark_aqua"}'} replace

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["global.ignore","global.ignore.kill","villedit_ui"]}

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon villager ~ ~1 ~ {CustomNameVisible:1b,NoAI:1b,Xp:1,Tags:["global.ignore","villager_editing"],CustomName:'{"text":"Custom Villager","color":"light_purple"}',VillagerData:{profession:"minecraft:armorer"}}

tellraw @p ["",{"text":"[!]","bold":true,"color":"yellow"},{"text":" Do you need help? Watch the","color":"gold"},{"text":" "},{"text":"tutorial video","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=PztnQGLTsto"},"hoverEvent":{"action":"show_text","contents":"Click to visit the VillEdit tutorial video"}}]

execute unless entity @s[type=player] run tp @s ~ -1000 ~
execute unless entity @s[type=player] run kill @s
