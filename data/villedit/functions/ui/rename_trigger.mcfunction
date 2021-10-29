data modify entity @s CustomName set from block ~ ~ ~ Command
data merge entity @s {CustomNameVisible:1b}
setblock ~ ~ ~ air
playsound minecraft:ui.button.click master @p