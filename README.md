# Mysterium_Text_Adventure
A short text adventure demo game made in Godot loosely based on Mysterium

Instructions to View or Modify Code:
1) Download Godot Editor: https://godotengine.org/
2) Cloen repository onto local machine
3) Open Godot Editor, select Import, and navigate to Mysterium

To Run Game:
You do neet to download Godot to run the game if the following works:
Mysterium_Text_Adventure/Mysterium/bin. This has a directory of opeatting systems (Windows, MacOS, Linux) each of which has an executable binary or compressed folder for the appropriate operating system.
Uncompressing the appropriate file or running the appropriate binary *Should* run the game. (Note: This has only been tested for Windows Executable on a machine with Godot installed)
Feel free to delete the folders in bin that not applicable to your operating system to save some disk space.

If the binary does not run (Note: You must download Godot editor at this point):
1) Follow instructions above to view or modify code
2) In the Godot Editor, in the toolbar click project->export->add and then choose the target platform you are running on. It will create a playable binary.
NOTE: Demo was developed and tested on Windows. It's reasonable to assume it works on most desktop environments, but it was not designed for mobile platforms
so it's unclear whether or not the game will play on Andoid/Iphone/etc. devices.

How To Play:
Follow the story via text, until you are prompted to make investigations.
Note that some texts have scroll bars maning there is more text below.
In each investigation level, you are trying to pick the correct 
murderer, location, or weapon from 6 possible visual options.
Click a button corresponding to an investigation and use the results to
determine the appropriate choice.
The game randomly select a murderer, weapon, and location each time you play
so the solution will change between playthroughs.

Version 1.0: This is a roguh draft of the game. Mysterium Text Adventure is in a fully playable state, but some features like a title screen, transitions between levels,
clearer scroll bars, and background music are not present.