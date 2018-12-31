for $tfac = 1.15 To 1.26 Step 0.05
for $cfac = 1.5 To 2.6 Step .5
for $thigh = 0.3 To 0.51 Step 0.1 ;.05
for $chigh = 0.3 To 0.51 Step 0.1 ;.05

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
Send("Polar-comb" & $tfac & "-" & $cfac & "-" & $thigh & "-" & $chigh & ".txt")
Send("{Enter}")
Send("{Enter}") ; not going to save dump file

Send("aseq 6 12 0.01")
Send("{Enter}")
Sleep(72000)
Send("pacc")
Send("{Enter}")

WinClose("C:\Users\Hyperion\Downloads\XFoil for Project\xfoilP4.exe")

Next
Next
Next
Next
