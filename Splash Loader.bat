:HomeMenu
	cls
	@echo off
	color 3
	title Splash Loader v1.2
	
		Echo    _____       __           __         __                    __         
		Echo   / ___/____  / /___ ______/ /_       / /   ____  ____ _____/ /__  _____
		Echo   \__ \/ __ \/ / __ `/ ___/ __ \     / /   / __ \/ __ `/ __  / _ \/ ___/
		Echo  ___/ / /_/ / / /_/ (__  ) / / /    / /___/ /_/ / /_/ / /_/ /  __/ /    
		Echo /____/ .___/_/\__,_/____/_/ /_/    /_____/\____/\__,_/\__,_/\___/_/     
		Echo     /_/                                           by Proto Propski                                  
		Echo.
		Echo ===========================================================================
		Echo.
		
		Echo.                                                                                                                                                                                                  
		Echo [1] -Splash Selection Screen                                                                                                                                                                      
		Echo [2] -Delete A Splash File
		Echo.
		Echo [0] -Exit
		Echo.

			set /P Choice=Choice: 

				if %Choice% == 0 goto 0
				if %Choice% == 1 goto SplashSelect
				if %Choice% == 2 goto DeleteSplash
					
					Echo.
					Echo (Error 1) Type a valid value.

						ping localhost -n 3 >nul
							goto HomeMenu

:SplashSelect
	cls
	@echo off
	color 3
	title Splash Selection Screen
	
		Echo    _____       __           __         __                    __         
		Echo   / ___/____  / /___ ______/ /_       / /   ____  ____ _____/ /__  _____
		Echo   \__ \/ __ \/ / __ `/ ___/ __ \     / /   / __ \/ __ `/ __  / _ \/ ___/
		Echo  ___/ / /_/ / / /_/ (__  ) / / /    / /___/ /_/ / /_/ / /_/ /  __/ /    
		Echo /____/ .___/_/\__,_/____/_/ /_/    /_____/\____/\__,_/\__,_/\___/_/     
		Echo     /_/                                           by Proto Propski                                  
		Echo.
		Echo ===========================================================================
		Echo.
		Echo  !! IMPORTANT !!

		Echo.
		Echo Place Your Splash#.bin files in the same Folder as this program on the Root 
		Echo of your SD Card (Ex. smdc:/Splash Loader/Splash#.bin)
		Echo.
		Echo Then Type the # of your Splash File Below.
		Echo.
		Echo.
		Echo (# = Number)
		Echo.
		Echo To Return to the Main Menu type M / Menu

			set /P Number=Number: 

				if %Number% == M goto HomeMenu
				if %Number% == m goto HomeMenu
				if %Number% == Menu goto HomeMenu
				if %Number% == menu goto HomeMenu
				if %Number% == %Number% goto Transfer

					Echo.
					Echo (Error 1) Type a valid value.

						ping localhost -n 3 >nul
							goto SplashSelect


:0
	
	exit
:: This Area is For Exiting

:DeleteSplash
	cls
	Title Splash Loader v1.2
	@Echo Off
	
		Echo    _____       __           __         __                    __         
		Echo   / ___/____  / /___ ______/ /_       / /   ____  ____ _____/ /__  _____
		Echo   \__ \/ __ \/ / __ `/ ___/ __ \     / /   / __ \/ __ `/ __  / _ \/ ___/
		Echo  ___/ / /_/ / / /_/ (__  ) / / /    / /___/ /_/ / /_/ / /_/ /  __/ /    
		Echo /____/ .___/_/\__,_/____/_/ /_/    /_____/\____/\__,_/\__,_/\___/_/     
		Echo     /_/                                           by Proto Propski                                  
		Echo.
		Echo ===========================================================================	
		Echo.

		Echo Choose the Splash#.bin File you Wish to Delete
		Echo.
		Echo.
		Echo To Return to the Main Menu type M / Menu
		
			set /P ChoiceD=Choice: 

				if %ChoiceD% == M goto HomeMenu
				if %ChoiceD% == m goto HomeMenu
				if %ChoiceD% == Menu goto HomeMenu
				if %ChoiceD% == menu goto HomeMenu
				if %ChoiceD% ==  %ChoiceD% goto Delete

					Echo.
					Echo (Error 1) Type a valid value.

						ping localhost -n 3 >nul
							goto DeleteSplash
		
:Delete
		
		Echo.
		Echo Deleting Chosen Splash#.bin File.
		Echo.
		
			del Splash%ChoiceD%.bin
				ping localhost -n 1 >nul
		Echo.
		Echo Delete Successful, Press Any Button to Return to the Main Menu
		Echo.
		
			pause >nul
		
		goto HomeMenu
	
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
		Echo ===========================================================================	
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

			goto HomeMenu
			
