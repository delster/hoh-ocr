# Heroes of Hammerwatch Scripts
This is just a repo for me to hold anything I make for HoH. Feel free to contribute. Everything's currently in AutoIt3, but I may move to AHK

## What are these files?

`hoh.au3` - I wrote this, it's a helper to create rooms with perfect fountains.

`fountain-values.txt` - Notes to myself for the values of each fountain roll.

`hoh-ocr.au3` - I found this online, and hope to roll this concept into the main script.

`ImageSearch.au3` & `ImageSearchDLL.dll` - Also not mine, required for `hoh-ocr.au3`

`img/fountain-*.png` - Screenshots I scraped to read for evaluating current fountain.


## How do I use this repo?

As it stands now, the only useful piece is `hoh.au3` which you can download and run. From the main menu of Heroes of Hammerwatch, press the hotkey for _CreateLobby_ (default: 7) to create a game, press the hotkey for _HitFountain_ (default: 8) to hit the fountain 3x, and if you're not satisfied, press _Escape_ to leave the fountain prompt, then press the hotkey for _LeaveGame_ (default: 9) to return to the main menu. Until the OCR stuff is complete, the script only hits the fountain 3x which will maximize the buffs (6) in a perfect scenario. More than likely, you'll have to watch and assess how many additional coin tosses you'll need, so I recommend doing them manually.
