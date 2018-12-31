HotKeySet("{F1}", "myExit")
;Run("notepad.exe")
;WinWaitActive("Untitled - Notepad")



for $tfac = 1.18 To 1.25 Step 0.01
$cfac = 2
;for $cfac = 2 To 2.4 Step 0.1

Run("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")
WinWaitActive("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Send("load 1080.dat")
Send("{Enter}")
Send("1080")
Send("{Enter}")
Send("ppar")
Send("{Enter}")
WinActivate("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Send("n 280")
Send("{Enter}")
Send("r 1")
Send("{Enter}")
Send("{Enter}")
Send("{Enter}")

Send("gdes")
Send("{Enter}")
Send("tfac")
Send("{Enter}")
Send($tfac)
Send("{Enter}")
Send($cfac)
Send("{Enter}")
Send("x")
Send("{Enter}")
Send("{Enter}")

Send("bend")
Send("{Enter}")
Sleep(10000)

Send("oper")
Send("{Enter}")
Send("visc 2E6")
Send("{Enter}")
Send("iter")
Send("{Enter}")
Send("100")
Send("{Enter}")

;Send("pacc")
;Send("{Enter}")
;Send("Polar" & $tfac &"-" & $cfac & ".txt")
;Send("{Enter}")
;Send("{Enter}") ; not going to save dump file

;Send("aseq 6 12 0.05")
;Send("{Enter}")
;Sleep(12000)
;Send("pacc")
;Send("{Enter}")

WinClose("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Next
;Next

Func myExit()
	  Exit
   EndFunc

