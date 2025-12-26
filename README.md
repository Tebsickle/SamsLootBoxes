# <p align=center><img src="github/chest.png" width="35"> Sam's Loot Boxes</p>

---

<p align="center">
    A minimal datapack that brings lootboxes to the mining experience of Minecraft.
</p>

<p align="center">
    <img src="https://img.shields.io/github/commit-activity/t/Tebsickle/SamsLootBoxes" alt="Commits" />
    <img src="https://img.shields.io/github/last-commit/Tebsickle/SamsLootBoxes" alt="Last Commit">
    <img src="https://img.shields.io/github/downloads/Tebsickle/SamsLootBoxes/total" alt="Downloads">
</p>

---

## Description

While mining, **lootboxes** have a small chance to appear, containing various loot/gear **respective to the location you found the chest**.

Balancing was built around that idea that the lootboxes are supposed to **supplement your mining, *not* replace the experience entirely**.

The specific blocks that can spawn lootboxes are:
- Stone
- Deepslate
- Netherrack
- End stone

Chests may contain:
- Ores/Ingots
- Gear

By default, **chests spawn at the following rates** per block:
| **Block** | **Spawn Chance** |
|-------|--------------|
| Stone | 0.5% |
| Deepslate | 0.5% |
| Netherrack | 0.1% |
| End Stone | 0.1 % |

## Installation

1. Download this repo by clicking the green code button.
2. Unzip the downloaded folder.
3. Move the unzipped folder into your minecraft world's ```datapack``` folder.
4. In game, use the command ```/reload```.

That's it! Loot boxes will now start spawning.

## Modding the Datapack

### ***Basic Understanding of the Datapack***
Every block broken adds ```1``` to a scoreboard objective pertaining to the block broken.

Every tick, the scoreboard values are checked, and any player that has a value of ```1``` or higher for any of the objectives has an execute command ran on them that raycasts forward to where they are looking. Their score for that scoreboard objective is set to ```0```.

This raycast goes forward in increments of ```0.1``` blocks until it hits the next non-air block, or ```4.5``` blocks, whichever comes first, then spawns a loot box ```0.15``` blocks closer to the player than the contact point.

This chest spawns using different loot tables defined in the datapack, all located in [```~/data/samslootboxes/loot_table/chests/```](https://github.com/Tebsickle/SamsLootBoxes/tree/main/data/samslootboxes/loot_table/chests). 

The decided loot table to use is determined in [```~/data/samslootboxes/function/broken/spawnchest.mcfunction```](https://github.com/Tebsickle/SamsLootBoxes/tree/main/data/samslootboxes/function/broken/spawnchest.mcfunction).

### ***To change the spawn chance of a chest for a block:***
Modify the ranges in lines 14-17 of [```~/data/samslootboxes/function/broken/blockbroken.mcfunction```](https://github.com/Tebsickle/SamsLootBoxes/tree/main/data/samslootboxes/function/broken/blockbroken.mcfunction). A number is chosen between ```1-1000```, and if the number is between the ranges for each block, a chest spawns. 

### ***To change the chances of the chosen loot table to use when spawning a chest***:
Modify the ranges in [```~/data/samslootboxes/function/broken/spawnchest.mcfunction```](https://github.com/Tebsickle/SamsLootBoxes/tree/main/data/samslootboxes/function/broken/spawnchest.mcfunction).

### ***To change the loot table of a chest:***
The [```~/data/samslootboxes/loot_table/chests/```](https://github.com/Tebsickle/SamsLootBoxes/tree/main/data/samslootboxes/loot_table/chests) folder contains every loot table used in the pack. Each json can be modified individually without issue.

## Special Credit

Thank you [Misode](https://github.com/misode) for making a [wonderful loot table tool](https://misode.github.io/loot-table/).

## Copyright

##### Copyright Sam Smithers 2025

Permission is granted to anyone to view, copy, and modify this work **for personal, non-commercial use only**, provided that **credit is given to Sam Smithers**. 

You may not use this work, or any modified version of it, for commercial purposes without explicit written permission from Sam Smithers. 

No warranties are provided. Use at your own risk.

## TODO

- Add endstone loot, just gear probably

- Add netherrack loot, just materials probably