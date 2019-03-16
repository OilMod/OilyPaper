# OilMod - OilyPaper #
## What ##
This is an unfinished implementation of the OilMod api based on PaperMc 1.12.2

## How to set up dev environment ##
[Full guide for Windows](./SetUpWindows.md)

### Quick Guide
- Download repository with e.g. git clone or IntelliJ IDEA
- Open bash window in project root directory
- `./concrete init-sm` - downloads and initialises submodules
- `./concrete up` - decompiles minecraft, sets up paper
- `./concrete patch` - adds our patches, creates OilyPaper code, creates correct local git structure

## Pushing ##
- Agree to our terms of contribution
- Commit your project files locally in the repository attached to projects
- `./concrete rebuild`
- Commit und push the new patch files (Do not commit the code directly)


## OS Support / Scripts##
We only directly support Ubuntu 14.04 for the shell scripts. It may work elsewhere... but no promises.

Many scripts will try to push to our repo's, please change that if you fork :)

### scripts/importmcdev ###
Imports specific files from mc-dev that CB/Spigot doesn't use but we need.

### scripts/updatespigot ###
updates the Bukkit/CraftBukkit/Spigot baseline when passed --update, otherwise regenerates the baseline with changes
to mcdev from importmcdev

Run `scripts/applypatches` then `scripts/rebuildpatches` immediately after

### scripts/generatesources ###
Generates an mc-dev folder that can be added to IDE for the other mc-dev files located in minecraft-server.jar

### scripts/rebuildpatches ###
Rebuilds patch state from the EmpireCraft-* repo's current state. Automatically handles patch deletion and renaming
for you unlike Spigots version of these scripts.

### scripts/applypatches ###
Takes current patches/{bukkit,craftbukkit} and applys them on latest spigot upstream
