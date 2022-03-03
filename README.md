# Ez Mod Reload
Simple AHK script that allows for reloading mods in Isaac quickly.

# Usage
1. Install Auto Hotkey
2. Run `ezmodreload.ahk`
3. When in game, press numpad 8 to quickly reload mods

# Editing values
This script features a number of customizable values that you probably need to tweak in order to make it work for you.
The are values are described inside `ezmodreload.ahk`.

## Changing timings
Timings are always given in milliseconds, because they use the `Sleep` function.
For convenience, the actual values are in lines `4`, `8`, `11` and `14`.

## Changing the hotkey
The hotkey by default is numpad 8, however it can be easily changed from inside the ahk file.
Simply replace the `Numpad8` in line `34` with any of the keys defined in [AHK's key list](https://www.autohotkey.com/docs/KeyList.htm)

Do note that keeping the `$` before the actual hotkey might be necessary, as it blocks the given key from being triggered on press. 

# Note about safety
Please keep in mind that pressing any keys during the script's execution **might** lead to your save file being deleted by accident, as the script only simulates keys being pressed, so changing where in the menu they are being pressed might cause unintentional damage.
Always backup your save file!