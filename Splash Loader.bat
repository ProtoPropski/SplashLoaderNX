:HomeMenu
	cls
	@echo off
	color 3
	title Splash Loader v1
	
		Echo    _____       __           __         __                    __         
		Echo   / ___/____  / /___ ______/ /_       / /   ____  ____ _____/ /__  _____
		Echo   \__ \/ __ \/ / __ `/ ___/ __ \     / /   / __ \/ __ `/ __  / _ \/ ___/
		Echo  ___/ / /_/ / / /_/ (__  ) / / /    / /___/ /_/ / /_/ / /_/ /  __/ /    
		Echo /____/ .___/_/\__,_/____/_/ /_/    /_____/\____/\__,_/\__,_/\___/_/     
		Echo     /_/                                           by Proto Propski                                  
		Echo.
 
		Echo  !! IMPORTANT !!

		Echo.
		Echo Place Your "Splash#.bin" File in the Same Folder as the "Splash Loader" file
		Echo Then Type the # of your Splash File Below.
		Echo.
		Echo.
		Echo (# = Number)
		Echo.

			set /P Number=Number:   

				if %Number% == Exit goto 0
				if %Number% == exit goto 0
				if %Number% == %Number% goto Transfer


					Echo Error 1
					Echo.
					Echo Type a correct number value.

						ping localhost -n 7 >nul
							goto :HomeMenu


:0
	
:: This Area is For Exiting
	
:Transfer
	cls
	Title Transferring
	@echo off
	
		Echo    _____       __           __         __                    __         
		Echo   / ___/____  / /___ ______/ /_       / /   ____  ____ _____/ /__  _____
		Echo   \__ \/ __ \/ / __ `/ ___/ __ \     / /   / __ \/ __ `/ __  / _ \/ ___/
		Echo  ___/ / /_/ / / /_/ (__  ) / / /    / /___/ /_/ / /_/ / /_/ /  __/ /    
		Echo /____/ .___/_/\__,_/____/_/ /_/    /_____/\____/\__,_/\__,_/\___/_/     
		Echo     /_/                                           by Proto Propski                                  
		Echo.
	
		Echo.
		Echo Transferring Your Splash
		Echo.

		Echo.
		Echo Deleting Existing Splash.bin (If it exists)
		Echo.
		
			del ..\Splash.bin
				ping localhost -n 1 >nul
				
		Echo.
		Echo Copying Splash%Number%.bin to SD Card Root
		Echo.
		
			copy /Y "Splash%Number%.bin" ".."
				ping localhost -n 1 >nul
				
		Echo.
		Echo Renaming Splash%Number%.bin to Splash.bin
		Echo.
		
			rename "..\Splash%Number%.bin" "Splash.bin"
				ping localhost -n 1 >nul

		Echo.
		Echo [ Complete! Press Any Button to Return to the Main Menu ]
		Echo.
		
			pause >nul

			goto :HomeMenu
			