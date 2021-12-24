# Usage
```
$ supermodel /PATH/TO/GAME_FILE -res=1280x1024
$ supermodel /PATH/TO/GAME_FILE -res=1024x768
```

# Known Problems:
## How do I bypass the network board error in Daytona USA 2?
```
When you see the "network board not present" screen, enter the Test Menu by pressing the Test button (mapped to 6 by default).

Using the Service button (5 by default), navigate to "Game Assignments" and press Test to select. In the Game Assignments menu, change "Link ID" from "Master" to "Single".

When you exit the Test Menu, the game will reset and boot up in single mode. This procedure only needs to be performed once. Configuration data is retained in the Model 3's EEPROM, which Supermodel saves each time it exits, and will automatically be loaded each time you start the emulator.
```

## Why does Star Wars Trilogy/Sega Rally 2 hang with a PowerPC error when I try to start a game?
```
This error occurs when coins are inserted and the Start button is pressed before 3D graphics are shown. Its cause is unknown but the solution is simple: wait until 3D graphics are shown (e.g., the Darth Vader sequence or desert track demo in Sega Rally) before coining up and starting a game.
```

## Why does Star Wars Trilogy boot directly into the stage select screen?
```
You must have quit with credits still logged in the machine. Clear the NVRAM (Alt-N) and reset (Alt-R). Or, just use up the credits by playing the game.
```

## How do I reload in The Lost World?
```
The "off-screen" button allows you to point the lightgun off-screen. By default, it is mapped to the right mouse button. To reload, shoot while holding the off-screen button (it is not sufficient to just press it). To reload with a single click, set InputAutoTrigger(player 1) and InputAutoTrigger2 (player 2) to 1 in Supermodel.ini.
```

## How can I start a game in Virtua Fighter 3 Team Battle?
```
An emulation bug prevents Virtua Fighter 3 Team Battle from coining up properly. To bypass this problem, the game must be set to free play mode and the region to USA from within the Test Menu. To access the Test Menu, press the Test button (mapped to 6by default) before the title screen shows up (e.g. at the export warning screen). Navigate to the "Game Assignments" menu using the Service button (5 by default).

Press Test to enter the "Game Assignments" menu. Change "Country" to "U.S.A." and exit back to the Test Menu.

Next, enter the "Coin Assignments" menu. Change the "Coin/Credit Setting" to 27 (free play) as shown below.

Exit the Test Menu and the game will reset itself. Pressing Start should now begin the game. Please note that due to emulation bugs, the game will run slower than Virtua Fighter 3, and will suffer from the same severe geometry and texture glitches. Unlike Virtua Fighter 3, however, the player models will not appear disjointed.
```

## How can I change the region in Scud Race Plus?
```
The region can be changed under "Game Assignments" in the Test Menu. To enter the Test Menu, press the Test button (6 by default), navigate with the Service button (5 by default), and make selections and changes with Test. Due to a problem with timing, it is normally impossible to select and change the "Country" setting because the cursor jumps around inconsistently. The solution is to reduce the PowerPC clock frequency to 10 MHz using the -ppc-frequency command line option, as shown below.

supermodel scudp.zip -ppc-frequency=10

The game will take a long time to boot up. After the initial boot-up screen, which displays the current machine settings, enter the Test menu. The cursor will continue to jump around but it will now be possible to enter the Game Assignments menu and change the region setting. Exit the Test Menu, quit Supermodel (the changes will automatically be saved to the NVRAM file), and restart as normal without under-clocking the PowerPC.
```
