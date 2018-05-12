#include <ImageSearch.au3>
#include <File.au3>
#include <GDIPlus.au3>
#include <Array.au3> ;just For debug


Local $aFiles = _FileListToArray(@ScriptDir & "\img\", "*.png", 1, True) ;add your pictures in a folder
If @error Then Exit
_ArrayDisplay($aFiles) ;debug files
; Initialize GDI+ library
_GDIPlus_Startup()


Local $aBitmaps[$aFiles[0]]
Local $hImage = 0

For $i = 0 To UBound($aBitmaps) - 1
    $hImage = _GDIPlus_ImageLoadFromFile($aFiles[$i + 1])
    $aBitmaps[$i] = _GDIPlus_BitmapCreateHBITMAPFromBitmap($hImage)
    _GDIPlus_ImageDispose($hImage) ;Clean up resources
Next


Local $iX = 0
Local $iY = 0
Local $iResult = 0
For $i = 0 To UBound($aBitmaps) - 1
    $iResult = _ImageSearch($aBitmaps[$i], 1, $iX, $iY, 20, 0)
    If $iResult Then
        MouseMove($iX, $iY)
        MouseClick("Left", $iX, $iY, 2)
    Else
        MsgBox(1, "Error", "Could not find image")
    EndIf
Next


;release the resources
For $i = 0 To UBound($aBitmaps) - 1
    _WinAPI_DeleteObject($aBitmaps[$i])
Next


; Shut down GDI+ library
_GDIPlus_Shutdown()