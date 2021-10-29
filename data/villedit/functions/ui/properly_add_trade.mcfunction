data remove storage villedit:tradetemp temp

# Getting Slot 0
execute if data block ~ ~ ~ {Items:[{Slot:0b}]} run data modify storage villedit:tradetemp temp.buy.id set from block ~ ~ ~ Items[{Slot: 0b}].id
execute if data block ~ ~ ~ {Items:[{Slot:0b}]} run data modify storage villedit:tradetemp temp.buy.Count set from block ~ ~ ~ Items[{Slot: 0b}].Count
execute if data block ~ ~ ~ {Items:[{Slot:0b}]} run data modify storage villedit:tradetemp temp.buy.tag set from block ~ ~ ~ Items[{Slot: 0b}].tag

# Getting Slot 1
execute if data block ~ ~ ~ {Items:[{Slot:1b}]} run data modify storage villedit:tradetemp temp.buyB.id set from block ~ ~ ~ Items[{Slot: 1b}].id
execute if data block ~ ~ ~ {Items:[{Slot:1b}]} run data modify storage villedit:tradetemp temp.buyB.Count set from block ~ ~ ~ Items[{Slot: 1b}].Count
execute if data block ~ ~ ~ {Items:[{Slot:1b}]} run data modify storage villedit:tradetemp temp.buyB.tag set from block ~ ~ ~ Items[{Slot: 1b}].tag

# Getting Slot 3
execute if data block ~ ~ ~ {Items:[{Slot:3b}]} run data modify storage villedit:tradetemp temp.sell.id set from block ~ ~ ~ Items[{Slot: 3b}].id
execute if data block ~ ~ ~ {Items:[{Slot:3b}]} run data modify storage villedit:tradetemp temp.sell.Count set from block ~ ~ ~ Items[{Slot: 3b}].Count
execute if data block ~ ~ ~ {Items:[{Slot:3b}]} run data modify storage villedit:tradetemp temp.sell.tag set from block ~ ~ ~ Items[{Slot: 3b}].tag

# Transferring to Villager
execute positioned ~ ~1 ~ run data modify entity @e[tag=villager_editing,limit=1,sort=nearest] Offers.Recipes append from storage villedit:tradetemp temp
execute positioned ~ ~1 ~ run tag @e[tag=villager_editing,limit=1,sort=nearest] add custom_recipes_made

# Reset
tag @s remove ve_addtrade
execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ barrel{Items:[{Slot:9b,id:"minecraft:diamond_ore",Count:1b,tag:{vetype:addTrade,display:{Name:'{"text":"Add Trade","color":"aqua","italic":false}'}}},{Slot:10b,id:"minecraft:redstone_ore",Count:1b,tag:{vetype:removeTrade,display:{Name:'{"text":"Remove Trade","color":"red","italic":false}'}}},{Slot:11b,id:"minecraft:raw_gold",Count:1b,tag:{vetype:profession,display:{Name:'{"text":"Cycle Professions","color":"gold","italic":false}'}}},{Slot:12b,id:"minecraft:oak_sapling",Count:1b,tag:{vetype:biome,display:{Name:'{"text":"Cycle Biome","color":"dark_green","italic":false}'}}},{Slot:13b,id:"minecraft:experience_bottle",Count:1b,tag:{vetype:level,display:{Name:'{"text":"Cycle Level","color":"green","italic":false}'}}},{Slot:14b,id:"minecraft:name_tag",Count:1b,tag:{vetype:rename,display:{Name:'{"text":"Rename","color":"yellow","italic":false}'}}},{Slot:16b,id:"minecraft:lime_concrete",Count:1b,tag:{vetype:save,display:{Name:'{"text":"Save","color":"green","italic":false,"bold":true}'}}},{Slot:17b,id:"minecraft:red_concrete",Count:1b,tag:{vetype:end,display:{Name:'{"text":"End","color":"red","italic":false,"bold":true}'}}}],CustomName:'{"text":"Change Villager Settings","color":"dark_aqua"}'} replace

playsound minecraft:ui.button.click master @p