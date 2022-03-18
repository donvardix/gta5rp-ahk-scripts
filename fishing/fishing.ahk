;Version: 1.0.3


LButtonCheck() {
    LButtonCoordX := 1052
    LButtonCoordY := 901
    LButtonColor  := "0xFF0000"

    if (PixelGetColor(LButtonCoordX, LButtonCoordY) = LButtonColor) {
        Click
    }
}

IRobotCheck() {
    IRobotCoordX := 916
    IRobotCoordY := 615
    IRobotColor  := "0xF4233C"

    if (PixelGetColor(IRobotCoordX, IRobotCoordY) = IRobotColor ) {
        SoundBeep 650, 500
    }
}


F4::
{
    SoundBeep

    startScript()
}

F5::
{
    SoundBeep
    Sleep 50
    SoundBeep

    stopScript()
}

startScript() {
    SetTimer LButtonCheck, 90
    SetTimer IRobotCheck, 5000
    SetTimer RButtonCheck, 500
}

stopScript() {
    SetTimer LButtonCheck, 0
    SetTimer IRobotCheck, 0
    SetTimer RButtonCheck, 0
}

RButtonCheck() {
    ;RButtonCoordX := 1066
    ;RButtonCoordY := 904
    ;RButtonColor  := ""

    Send 1
}


;Get cursor coordinates
^p::
{
    MouseGetPos &MouseX, &MouseY
    MsgBox "X: " . MouseX . "; Y: " . MouseY
}

;Get pixel color
^o::
{
    MouseGetPos &MouseX, &MouseY
    MsgBox "Color: " PixelGetColor(MouseX, MouseY)
}


End::ExitApp

Pause::Pause -1
