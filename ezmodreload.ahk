; Change the behavior of after-load hotkey
; 0 - Starts a new run as Isaac (default)
; 1 - Continues run
; 2 (or any other value) - Disables the script after reload
newGame = 0

; Tweak the next 2 to your liking
; Time in milliseconds to wait for the game to unload mods (default: 2000)
modsUnloadWait = 2000

; Time in milliseconds to wait for the game to load mods (default: 5000)
modsLoadWait = 5000

; Default wait time for actions in the menu (default: 150)
waitTime = 150

; Boilerplate for making keys work in Isaac, provide a key to press
SendIsaacKey(key)
{
    Send, {%key% down} 
    Sleep, 1
    Send, {%key% up}
}

; These get passed donw to SendIsaacKey instead of the built in keys, because they dont work
esc := "Escape"
down := "Down"
up := "Up"
enter := "Enter"
tab := "Tab"


; Change this key to whatever you like (default: Numpad8)
; Do not that the '$' before the key name is optional, but it can be helpful since it block the actual key being sent
$Numpad8:: 
    SendIsaacKey(esc)
    Sleep, waitTime
    SendIsaacKey(down)
    Sleep, waitTime
    SendIsaacKey(enter)
    Sleep, 600
    ; Now in menu

    SendIsaacKey(down)
    Sleep, waitTime
    SendIsaacKey(down)
    Sleep, waitTime
    SendIsaacKey(enter)
    Sleep, 50
    ; Now in mods menu

    SendIsaacKey(tab)
    Sleep, 5
    SendIsaacKey(esc)
    Sleep, modsUnloadWait
    ; Back in menu again

    SendIsaacKey(enter)
    Sleep, 50
    ; Now in mods menu yet again

    SendIsaacKey(tab)
    Sleep, 5
    SendIsaacKey(esc)
    Sleep, modsLoadWait
    ; Back in menu yet again
    
    if(newGame = 0){
        ; Go to new game -> start game as Isaac
        SendIsaacKey(up)
        Sleep, waitTime
        SendIsaacKey(up)
        Sleep, waitTime
        SendIsaacKey(up)
        Sleep, waitTime
        SendIsaacKey(enter)
        Sleep, 50
        SendIsaacKey(enter)
    }
    else if(newGame = 1){
        ; Go to continue
        SendIsaacKey(up)
        Sleep, waitTime
        SendIsaacKey(up)
        Sleep, waitTime
        SendIsaacKey(enter)
    }