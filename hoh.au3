Global $Title = "Heroes of Hammerwatch"
Global $LobbyName = "Perfect Fountain 6/0"
HotKeySet("7", "CreateLobby")
HotKeySet("8", "HitFountain")
HotKeySet("9", "LeaveGame")

; Keep Script Active
While 1
  Sleep( 250 )
WEnd

; Create a Multiplayer Lobby with $LobbyName as the title.
Func CreateLobby()
   If WinExists($Title) Then
	  WinActivate($Title)
	  WinWaitActive($Title)

	  ; These weren't clicking, so we're doing it manually here.

	  ; Multiplayer
	  MouseMove(815, 940, 0)
	  Sleep(200)
	  MouseDown("left")
	  Sleep(250)
	  MouseUp("left")

	  ; Create Lobby
	  MouseMove(815, 760, 0)
	  Sleep(200)
	  MouseDown("left")
	  Sleep(250)
	  MouseUp("left")

	  ; Select Character
	  MouseMove(1190, 900, 0)
	  Sleep(200)
	  MouseDown("left")
	  Sleep(250)
	  MouseUp("left")

	  ; Lobby Name
	  MouseMove(830, 330, 0)
	  Sleep(200)
	  MouseDown("left")
	  Sleep(250)
	  MouseUp("left")

	  ; Clear Default Lobby Name
	  Local $i = 0
	  Do
		 $i += 1
		 Send('{Backspace}')
	  Until $i = 20

	  ; Input Lobby Name
	  Send($LobbyName)

	  ; OK
	  MouseMove(950, 850, 0)
	  Sleep(200)
	  MouseDown("left")
	  Sleep(250)
	  MouseUp("left")
   EndIf
EndFunc

; Hit the Fountain 3x after loading in.
Func HitFountain()
   If WinExists($Title) Then
	  WinActivate($Title)
	  WinWaitActive($Title)

	  ; Walk to Fountain
	  Send("{w DOWN}")
	  Sleep(700)
	  Send("{w UP}")
	  Sleep(200)

	  ; Interact with Fountain
	  Send("f")

	  ; Click "Toss Coin" 3x
	  MouseMove(960, 680, 0)
	  Sleep(200)

	  Local $i = 0
	  Do
		 $i += 1
		 MouseDown("left")
		 Sleep(250)
		 MouseUp("left")
		 Sleep(1000)
	  Until $i = 3

   EndIf
EndFunc

; Leave the current game and return to main menu.
Func LeaveGame()
   If WinExists($Title) Then
	  WinActivate($Title)
	  WinWaitActive($Title)

	  ; Open Menu
	  Send('{ESC}')
	  Sleep(200)

	  ; Press "Power" Button
	  MouseMove(1460, 940, 0)
	  Sleep(200)
	  MouseDown("left")
	  Sleep(250)
	  MouseUp("left")

	  ; Press "Yes" Button
	  MouseMove(1460, 770, 0)
	  Sleep(200)
	  MouseDown("left")
	  Sleep(250)
	  MouseUp("left")
   EndIf
EndFunc