HotKeySet("{F1}", "myExit")
;Run("notepad.exe")
;WinWaitActive("Untitled - Notepad")

    $tfac = 1.25
    $cfac = 2.5
    $thigh = .4
    $chigh = .5

Run("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")
WinWaitActive("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Send("load 1080.dat")
Send("{Enter}")
Send("1080")
Send("{Enter}")

Send("ppar")
Send("{Enter}")
Sleep(500)
WinActivate("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")
WinWaitActive("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")
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

Send("ppar")
Send("{Enter}")
Sleep(500)
WinActivate("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")
WinWaitActive("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")
Send("n 280")
Send("{Enter}")
Send("r 1")
Send("{Enter}")
Send("{Enter}")
Send("{Enter}")

Send("bend")
Send("{Enter}")
Sleep(5000)


Send("oper")
Send("{Enter}")
Send("visc 2E6")
Send("{Enter}")
Send("iter")
Send("{Enter}")
Send("200")
Send("{Enter}")

Send("pacc")
Send("{Enter}")
Send("Polar-FINAL" & $tfac & "-" & $cfac & "-" & $thigh & "-" & $chigh & ".txt")
Send("{Enter}")
Send("{Enter}") ; not going to save dump file

Send("aseq 5 7 0.005")
Send("{Enter}")
Sleep(100000)
Send("pacc")
Send("{Enter}")


WinClose("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Func myExit()
	  Exit
   EndFunc

