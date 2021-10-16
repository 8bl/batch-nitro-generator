@echo off
:letsgen
title [Nitro gen]
setlocal enabledelayedexpansion
set "valid_chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
echo.
echo 	    ___ _            _    _             _       
echo 	   / __\ ^| __ _  ___^| ^| _^| ^|_ __ _ _ __(_) ___  
echo 	  /__\// ^|/ _` ^|/ __^| ^|/ / __/ _` ^| '__^| ^|/ _ \ 
echo 	 / \/  \ ^| (_^| ^| (__^|   ^<^| ^|^| (_^| ^| ^|  ^| ^| (_) ^|  Created by Blacktario ^& AfraL !black!
echo 	 \_____/_^|\__,_^|\___^|_^|\_\\__\__,_^|_^|  ^|_^|\___/ 
echo.                                               
echo.
   


set /p codes="Amount of Nitro codes to generate ~~^> "
for /L %%A in (1,1,%codes%) do (
	set "nitro_code=discord.gift/
	for /L %%B in (1,1,16) do (
		set /a rnd_char=!RANDOM!%%62
		for /f %%C in ("!rnd_char!") do (
			set "nitro_code=!nitro_code!!valid_chars:~%%C,1!"
		)
	)
	>> codes.txt echo !nitro_code!
	echo !green![GENERATED]!black! !nitro_code!
)
echo.
echo.
echo. Nitro Codes has been generated, you can find them on codes.txt
pause > nul
exit
