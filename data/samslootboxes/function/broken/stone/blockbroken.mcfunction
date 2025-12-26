# /broken is a large composition of functions.
# checkbrokenstatuses.mcfunction is the first to run when a block break is detected.
# It routes the logic to the blockbroken.mcfunction of the broken block's folder.
# The blockbroken.mcfunction routes the logic to recurse.mcfunction, then spawnchest.mcfunction afterward.

scoreboard players set @s stoneBroken 0
scoreboard players set @s raycastDist 0
scoreboard players set @s chestSpawned 0

# Roll chest chance. The last number determines 1/x chance.
execute store result score @s chestRandom run random value 1..2

# If block successfully passes a x spawnchance, spawn chest. 
execute if score @s chestRandom matches 1 run execute at @s anchored eyes positioned ^ ^ ^0.5 run function samslootboxes:broken/stone/recurse