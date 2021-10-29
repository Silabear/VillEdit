setblock ~ 0 ~ air
data remove storage villedit:villager VillagerData
data remove storage villedit:villager Offers
data remove storage villedit:villager CustomName
data remove storage villedit:villager Xp
data remove storage villedit:villager Tags
data modify storage villedit:villager VillagerData set from entity @s VillagerData
data modify storage villedit:villager Offers set from entity @s Offers
data modify storage villedit:villager CustomName set from entity @s CustomName
data modify storage villedit:villager Xp set from entity @s Xp
data modify storage villedit:villager Tags set value ["ve_villager","ve_new"]
setblock ~ 0 ~ barrel{Items:[{Slot:0b,id:"minecraft:villager_spawn_egg",Count:1b,tag:{Enchantments:[{}],EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CustomNameVisible:1b}}}]} replace
item modify block ~ 0 ~ container.0 villedit:make_spawn
summon item ~ ~ ~ {Tags:["vill_spawn"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:1}
data modify entity @e[type=item,tag=vill_spawn,limit=1,sort=nearest] Item set from block ~ 0 ~ Items[0]
data modify entity @e[type=item,tag=vill_spawn,limit=1,sort=nearest] Item.tag.display.Name set from entity @s CustomName
tp @e[type=item,tag=vill_spawn,limit=1,sort=nearest] @p