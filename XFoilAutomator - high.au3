HotKeySet("{F1}", "myExit")
;Run("notepad.exe")
;WinWaitActive("Untitled - Notepad")


for $tfac =
for $cfac =
for $thigh = 0.1 To 0.4 Step 0.1
for $chigh = 0.2 To 0.7 Step .1

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
Send("high")
Send("{Enter}")
Send($thigh)
Send("{Enter}")
Send($chigh)
Send("{Enter}")
Send("x")
Send("{Enter}")
Send("{Enter}")


;Send("bend")
;Send("{Enter}")
;Sleep(7000)

Send("oper")
Send("{Enter}")
Send("visc 2E6")
Send("{Enter}")
Send("iter")
Send("{Enter}")
Send("100")
Send("{Enter}")

Send("pacc")
Send("{Enter}")
Send("Polar-comb" & $tfac "-" & $cfac "-" & $thigh & "-" & $chigh & ".txt")
Send("{Enter}")
Send("{Enter}") ; not going to save dump file

Send("aseq 6 12 0.25")
Send("{Enter}")
Sleep(20000)
Send("pacc")
Send("{Enter}")

WinClose("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Next
Next

Func myExit()
	  Exit
   EndFunc

