# Removal
execute as @e[tag=villedit_ui,tag=!ve_addtrade] at @s unless block ~ ~ ~ barrel run kill @e[type=item,distance=..1]
execute as @e[tag=villedit_ui,tag=!ve_addtrade] at @s unless block ~ ~ ~ barrel run execute positioned ~ ~1 ~ run tp @e[tag=villager_editing,distance=..0.5] ~ ~-1000 ~
execute as @e[tag=villedit_ui,tag=!ve_addtrade] at @s unless block ~ ~ ~ barrel run kill @s

# UI
execute as @e[tag=villedit_ui] at @s if entity @a[distance=..6] run function villedit:ui_manage

# Recipe Manager
execute as @e[tag=villager_editing,tag=custom_recipes_made] at @s unless data entity @s Offers.Recipes[0] run tag @s remove custom_recipes_made

# XP resetting
execute as @e[tag=ve_villager] run data merge entity @s {Xp:1}

# Egg Spawning
execute as @e[tag=ve_new_editor] at @s run function villedit:spawn

# Rotation
execute as @e[tag=ve_new] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ve_new] run tag @s remove ve_new

# Particles
execute at @e[type=marker,tag=villedit_ui] run particle minecraft:end_rod ~ ~ ~ .5 .5 .5 0 1


# Chest Spawning
execute as @e[type=villager,tag=!ve_checked] at @s run function villedit:check_chest

# Renaming
execute as @e[tag=villager_editing] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:writable_book",Count:1b}},distance=..1] run data modify entity @s CustomName set from entity @e[type=item,nbt={Item:{id:"minecraft:writable_book",Count:1b}},distance=..1,limit=1] Item.tag.pages[0]
execute as @e[tag=villager_editing] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:writable_book",Count:1b}},distance=..1] run kill @e[type=item,nbt={Item:{id:"minecraft:writable_book",Count:1b}},distance=..1]