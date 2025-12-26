# /broken is a large composition of functions.
# checkbrokenstatuses.mcfunction is the first to run when a block break is detected.
# It routes the logic to the blockbroken.mcfunction of the broken block's folder.
# The blockbroken.mcfunction routes the logic to recurse.mcfunction, then spawnchest.mcfunction afterward.

scoreboard players set @s raycastDist 0
scoreboard players set @s chestSpawned 0

# Roll random number between 1 and 1000 for chest spawn chance.
execute store result score @s chestRandom run random value 1..1000

# Execute spawnchest logic if random number is within chest spawn chance.
# CHANGE THE RANGES IN THE BELOW COMMANDS IF YOU WANT TO MODIFY THE SPAWN CHANCES.
execute if score @s chestRandom matches 1..5 if score @s stoneBroken matches 1.. run execute at @s anchored eyes positioned ^ ^ ^0.5 run function samslootboxes:broken/recurse
execute if score @s chestRandom matches 1..5 if score @s deepslateBroken matches 1.. run execute at @s anchored eyes positioned ^ ^ ^0.5 run function samslootboxes:broken/recurse
execute if score @s chestRandom matches 1..1 if score @s netherrackBroken matches 1.. run execute at @s anchored eyes positioned ^ ^ ^0.5 run function samslootboxes:broken/recurse
execute if score @s chestRandom matches 1..1 if score @s endstoneBroken matches 1.. run execute at @s anchored eyes positioned ^ ^ ^0.5 run function samslootboxes:broken/recurse

scoreboard players set @s stoneBroken 0 
scoreboard players set @s deepslateBroken 0
scoreboard players set @s netherrackBroken 0
scoreboard players set @s endstoneBroken 0