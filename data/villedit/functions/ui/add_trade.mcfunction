tag @e[tag=villedit_ui,sort=nearest,limit=1] add ve_addtrade

setblock ~ ~-1 ~ hopper{CustomName: '{"color":"dark_aqua","text":"Add a new trade"}', x: 10, y: 68, z: 156, Items: [{Slot: 2b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRlMzZjZjNmYjUzNzg5MmRiMmNlMjk4MWZmNTkzZDZkYTQxOWU1OGI5MmZiODZmOWEzYmRlMDQxZDZjYzk2In19fQ=="}]}, Id: [I; 849091312, 1327581242, -1709353719, 1292078541]}, display: {Name: '{"text":""}'}}}, {Slot: 4b, id: "minecraft:lime_concrete", Count: 1b, tag: {vetype:savetrade,display: {Name: '{"text":"Add Trade","color":"green","italic":false}'}}}]}

playsound minecraft:ui.button.click master @p