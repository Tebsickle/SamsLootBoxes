# Sam's Loot Boxes

## Description

While mining, **lootboxes** have a small chance to appear, containing various loot/gear **respective to the location you found the chest**.

The specific blocks that can spawn lootboxes are:
- Stone
- Deepslate
- Netherrack
- End stone

Chests may contain:
- Ores/Ingots
- Gear

By default, **chests spawn at the following rates**:
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

#### <u>Basic Understanding of the Datapack</u>
Every block broken adds ```1``` to the scoreboard objective pertaining to the block broken.

Every tick, the scoreboard values are checked, and any player that has a value of ```1``` or higher for any of the objectives has an execute command ran on them that raycasts forward to where they are looking. Their score for that scoreboard objective is set to ```0```.

This raycast goes forward in increments of ```0.1``` blocks until it hits the next non-air block, or ```5.5``` blocks, whichever comes first, then spawns a loot box ```0.15``` blocks closer to the player than the contact point.

This chest spawns using different loot tables defined in the datapack, all located in ```~/data/samslootboxes/loot_table/chests/```. 

The decided loot table to use is determined in ```spawnchest.mcfunction``` in each folder in the ```~/data/samslootboxes/function/broken``` folder.

#### <u>To change the spawn chance of a chest for a block:</u>
Each folder in the ```~/data/samslootboxes/function/broken``` folder contains a ```blockbroken.mcfunction```. Modify the range in line 11. The higher the range, the rarer.

#### <u>To change the loot table of a chest:</u>
The ```~/data/samslootboxes/loot_table/chests/``` folder contains every loot table used in the pack. Each 

## Copyright

##### Copyright Sam Smithers 2025

Permission is granted to anyone to view, copy, and modify this work **for personal, non-commercial use only**, provided that **credit is given to Sam Smithers**. 

You may not use this work, or any modified version of it, for commercial purposes without explicit written permission from Sam Smithers. 

No warranties are provided. Use at your own risk.