# /broken is a large composition of functions.
# checkbrokenstatuses.mcfunction is the first to run when a block break is detected.
# It routes the logic to the blockbroken.mcfunction of the broken block's folder.
# The blockbroken.mcfunction routes the logic to recurse.mcfunction, then spawnchest.mcfunction afterward.

# spawnchest.mcfunction

# Executes as the play, at the position determined by raycasting in recurse.mcfunction.

scoreboard players set @s chestSpawned 1
particle glow ~ ~ ~ 0 0 0 10 500 force @s
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 0.7 0.51

# Roll new number for chest randomization.
execute store result score @s chestRandom run random value 1..1000

# ----- DETERMINE CHESTS -----

# Stone
execute if score @s chestRandom matches 1..1000 if score @s stoneBroken matches 1.. run setblock ~ ~ ~ chest{LootTable:"samslootboxes:chests/stone/ores"}

# Deepslate
execute if score @s chestRandom matches 1..800 if score @s deepslateBroken matches 1.. run setblock ~ ~ ~ chest{LootTable:"samslootboxes:chests/deepslate/ores"}
execute if score @s chestRandom matches 801..1000 if score @s deepslateBroken matches 1.. run setblock ~ ~ ~ chest{LootTable:"samslootboxes:chests/deepslate/gear"}

# Netherrack
execute if score @s chestRandom matches 1..1000 if score @s netherrackBroken matches 1.. run setblock ~ ~ ~ chest{LootTable:"samslootboxes:chests/netherrack/materials"}

# End Stone
execute if score @s chestRandom matches 1..1000 if score @s endstoneBroken matches 1.. run setblock ~ ~ ~ chest{LootTable:"samslootboxes:chests/endstone/materials"}