HotKeySet("{F1}", "myExit")

Run("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")
WinWaitActive("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Send("load testfoil.txt")
Send("{Enter}")
Send("testfoil")
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

Send("bend")
Send("{Enter}")
Sleep(5000)

Send("oper")
Send("{Enter}")
Send("visc 2E6")
Send("{Enter}")
Send("iter")
Send("{Enter}")
Send("400")
Send("{Enter}")

Send("pacc")
Send("{Enter}")
Send("Polar-FINAL" & ".txt")
Send("{Enter}")
Send("{Enter}") ; not going to save dump file

Send("aseq 4 13 0.005")
Send("{Enter}")
Sleep(75000)
Send("pacc")
Send("{Enter}")


;WinClose("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Func myExit()
	  Exit
   EndFunc

