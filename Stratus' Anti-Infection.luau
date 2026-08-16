----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Put this script in ServerScriptService for it to work best.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
print("Stratus' Antivirus V2.2 Loaded")
--[[

	Created by:
	@Stratus_bl [ROBLOX]

]]
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--funny killfeeds
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
killfeeds = {" got divided by 0."," got their turn skipped.",":Destroy()",":Remove()"," forgot to say uno.",".Parent = nil",".Parent=nil"," was poked to death by a sweet berry bush."," didn't want to live in the same world as Stratus' Antivirus."," was killed by magic."," said star glitcher was bad."}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- i had to dig through EVERY SINGLE SCRIPT to find these rename and regular name from backdoors
-- so far i only was able to take down a couple
-- luckily roblox is deleting alot of mainmodules with malware in it
-- even though this script exists you still should always check scripts inside of any toolbox models you inserted
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

------=-----==============-------====---------=++++=---------------------------====--==-=======-=+++==
-----==---================------+====---------==+++-----------==---------------==-----=-======++++++++
-----=-----===============-----+======---------=+++----------=======-----=======-==---========++++++++
=---=====================-----=========--------=++=------------=====----=====================+++++++++
=--==========-------=-------==++++====++==-----=+++------------=====---====================+++++++++++
+-=+====+=----------=========+++++++=+*===+==--=++=----------++-==++=---===+++++++++++++++++++-....-=+
+=+=+===+=-------------==-==+++++++++++++=====-=+++------------++-::....:-++----+=-++=+++++++=-::::-==
++=-=+++===-----------======**+++++++*++++======+++---------:::--:----:::-==----+++---+++++++++----=--
++===+++=--==---------=====+******+++*++++++====+++------:-:-::::::--------------------+--+*+=++++++++
++=--+++=---------------===********++*+++++*===-=++=-------==-:::-------------------------=-----==++++
+++++++++++-+-------------=**********++++++++====+++------=++++----------------------------=----=+++++
+=-==+++++++==---+--------=***********+---=+++===+++=--=--=+***+==--------------------------=--=++++++
+++++++++++++=+===---------+**********++++=--=+==++++=-:+*********++-----------------------===-=++++++
++++++++++++*++==----------=*********#**++++==--==+++==--************+=-=-----------------==+===++++++
++++++++++++*+=------------=-********#***++++++=-==+++--:*#****++******+=--------------==-=======+++++
++++++==-+++++++---------------******#*****++++++=-=++--=*+#***+++++*****+=----------===========++++++
+*++**+-:-++++=-++==-=----------+****#****###*+++++=-+--*+++##*+++++++#****++-------=-======++++++++++
+*-------:=+++++++====-----------=####****###**#++++==++*++++**#++++++++*****-----=======+++++++++++++
++=-----=+=+++++++=-----------*******#****#######***+++**++*+*****+++++++#***=========+++++++++****+++
++-------=-:::..--::::-***##**#******#****#########****#***********+++++++#*+++======++++++++*********
++-------:::........:#*####**##***#*##****##########******************++++*++++-:-:-:::-=+++**********
++--------::......*##################%#***########*******#*************++++++*=+++++====----**********
++--------:::.-**############%#########***#####******************************#+++++++++++++****==*+***
++---------::.*#####**######%#######%#%#***#*******************************#%#*****#*+++++#****=-=--=+
++=--------::..:---:::+*####%###%#%%##%##*******************###**********%######*###**++*#+++*=====+--
+++---------:.....:::::-*###%###%##%%##%#*********######*****##***********##########***+#==========+--
+++----------:....:::::----=####%####%%##***##**#########***********##*****######%*****=:-========-*=*
++*----------:.....::::-----%%%%%%#####%##*****##########**********###*****%####%****#::--======++****
+++---------::.....::::-----%%@%%%%######%###############******************#*###****+::::-====----=*+*
+++=-====----:......::::----%%%@%%%%%##########*****%####******************#*#****%-::::::----------++
++++=---==----:....:::::----+%%%@%%%%%###########****%##*************####**%*****#****:::::----==---+-
++++==-==------....:::::-----#%%%@%%%%%######%%##*****#************######**#***%****##*+::--======--=-
=+=+=====------:....:::::------*%%%@%%%%####***::#****************#######****#*##*######=:-======---==
======---------:....:::::-----#%%%%%@%%%%###***+*##%*#************##%%###*%#######******+-::-==-----==
=====----------::....:::::::+%%%%%%%%@%%%%##******########*******#*****#*%#########-:..::-:=---------+
-===-----------::....::::::+#%%%%%%%%%@%%%%#*******#*#########***##*****%*******#---:..::::----------+
----------------:::::::::::#*::-#%%%%%%@%%%#********##############%****+++*******::::..::------------+
----------------::.....::::::::%%%%####%%%%%********####%############*******#---:-::...::------------+
-----------------::..:::::::::*%#%%#****#%%%%#******####%########**%***#%%####=--::-...:::---------===
----------------::::::::::::::%#######**#%%@@@%%****#%##%######*#%*#+++****#*#**:::-:::::-----=-----==
-----------------::::::::::::-##########@@@@@@@@@%%%%%%%######*+**%%%###%%%+=---::::::::::----========
-----------------::::::::::::##########+-@@@@@@@@@@@@@@@@@%%@@@@@%%#***###*-----:::::::::::--=========
------------------:::::::::::#########=---#@@@@@@@@@@@@@@@@@@@@@@%##*######*------::::::::---=========
------------------:::::::::::########-------+%@@@@@@@@@@#%%%#===%############-----::::::::--==========
------------------:::::::::::=#####-::::-------=%%%@@@@@%%%++=====%###########--:-:::::::::--=========
-----------------::::::::::::::--::::...------------------+++==-====-#########=-::::.:::::::-::--=====
-=++-------------::::::::::::::::::::.::-------------=----+++*=---=====-######=:::::.:::::::::---=====
----+=++*=--------:::::::::::::::......::::::-------------+++*=----==-==-=-------::..:::::::::---=====
--------=++++++=----::::::::::::........::::::------------=+++=---------==---------:.::::::::::-======
==------====+***++++++-::::::::.........::::::------------=+++=--------=-----------::::::::....:--====
*++++++==-===++**+*+++++++*=::::........::::::::-----------====--------=-----------::::::::.....:::---
*****++====---=+******++++++++++-......:::::::::------------===--------------------:::::.........:::::

]]
coroutine.resume(coroutine.create(function()
	local timesscanned = 0
	local foundviruses = 0
	while true do -- In case of if the viruses try to prevent removal.
		timesscanned = timesscanned + 1
		for _,v in game:GetDescendants() do
			if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Motor") or v:IsA("Rotate") or v:IsA("RotateV") or v:IsA("RotateP") or v:IsA("VelocityMotor") or v:IsA("Motor6D") or v:IsA("AlignPosition") or v:IsA("AlignOrientation") or v:IsA("BodyGyro") or v:IsA("BodyPosition") or v:IsA("BodyVelocity") then -- classnames for some old viruses
				local nameLower = v.Name
				if v.Name == "INfecTION" or v.Name == "OH SNAP YOU GOT INFECTED XD XD XD" or v.Name == "4D Being" or v.Name == "4DBeing" or v.Name == "Revenge101" or v.Name == "Join Teh Moovment" or v.Name == "Vaccine" or v.Name == "ROFL" or v.Name == "Infected" or string.find(nameLower, ".........you got owned...") or string.find(nameLower, "m Your New Lord Lolz") or v.Name == "Virus" or v.Name == "N0ISE" or v.Name == "bryant90" or v.Name == "sonicthehedgehogxx Made this!!" or v.Name == "Fear Made This!!" or v.Name == "stanley12345678910" or v.Name == "Making Cat Ice Cream Make Me Happy!" or v.Name == "Dont Worry Im A Friendly Virus" or v.Name == "H75" or v.Name == "AmazingOmegaJames" or v.Name == "ANTIVIRIS" or v.Name == "ANTIVIRISIS" then -- soo like if u are wondering about the bryant90 and stanley12345678910 parts they are part of a virus model and they have scripts in them that lag the game a TON
					foundviruses = foundviruses + 1
					print(v.Name .. killfeeds[math.random(1, #killfeeds)])
					v:Destroy()
				end
			elseif v:IsA("Script") then
				if v.Name == "Script......Or is it..." or v.Name == "Spread" then
					if v.Name == "Spread" and v.Parent:IsA("Fire") then -- These are used to light everything on fire, which causes lag.
						foundviruses = foundviruses + 1
						print(v.Name .. killfeeds[math.random(1, #killfeeds)])
						v:Destroy()
					end
				end
			end
		end
		for _,v in game.ReplicatedStorage:GetDescendants() do
			if v.Name == "Backdoor" and v:IsA("RemoteEvent") then -- most if not all backdoors have these characteristics
				foundviruses = foundviruses + 1
				v:Destroy()
			end
		end
		for _,v in game:GetDescendants() do
			if v:IsA("Script") then
				if v.Name == "PackageLink" or v.Name == "qTexture" or v.Name == "CoreSkyboxSystem" or v.Name == "qPerfectionWeld" or v.Name == "PoseTexture" or v.Name == "LightConfig" or v.Name == "CoreViewSystem" then	 -- u can find these viruses by simply using almost any free model which is bad
					if v:GetDescendants("Pose") then
						foundviruses = foundviruses + 1
						print(v.Name .. killfeeds[math.random(1, #killfeeds)])
						v:Destroy()
					end
				end
			end
		end
		for _,v in game:GetDescendants() do
			if v:IsA("Script") or v:IsA("RotateP") or v:IsA("StringValue") or v:IsA("Weld") then
				local nameLower = v.Name
				if v.Name == [[]] then
					foundviruses = foundviruses + 1
					print("Unnamed Virus" .. killfeeds[math.random(1, #killfeeds)])
					v:Destroy()
				elseif v.Name == "ROBO22e" or v.Name == "survivor2256" or string.find(nameLower,"9001") or v.Name == "dapperguestyo" or v.Name == "TNT24" or (string.find(nameLower,"TheNullsc") and string.find(nameLower,"peIsNotHere")) or (string.find(nameLower,"TheNullsc") and string.find(nameLower,"peIsHere")) or v.Name == "ScriptTeacher" or v.Name == "J0HN" or v.Name == "Lol" or v.Name == "INfecTION" or v.Name == "inFECtion" or v.Name == "WOMP WOMP INFECTED" or v.Name == "J0HNSCR1PT" or v.Name == "HAAXEDBYCREX" or v.Name == "EXTRAHAX" or v.Name == "C-REX" or v.Name == "Script......Or is it..." or v.Name == "Virus" or v.Name == "Advertise Project Zero uwu" or v.Name == "charlie84" or v.Name == "Vaccine" or v.Name == "OwO PILLA VIRUS OwO" or v.Name == "HAAXEDBYCREATURES" or v.Name == "HAHAHAHA" or v.Name == "Anti Lag Script" or (string.find(nameLower, "mmerNeededInPhilosiphalLocations;insertNoobHere") and string.find(nameLower, "ProperGr")) or string.find(nameLower, "いいえ。いいえ。いいえ。いいえ。いいえ。いいえ。いいえ。いいえ。い") or string.find(nameLower, "すみません。すみません。すみません。すみません。すみません。おあい") or string.find(nameLower, [[֬򞖧:Ξsᇅ{F𤋉򠾣銻򒒙#ȸ􍲆򄆠"P[؆򧸥㲟󧯡׼󊕃~*wʭ]Ɛ!ᓧ2嚑픍뙈㬉񾜠ׯ҈H]]) or string.find(nameLower, "rtHere") or string.find(nameLower, "IAmHereToHe") or v.Name == "sonicthehedgehogxx Made this!!" or v.Name == "Fear Made This!!" or v.Name == "Making Cat Ice Cream Make Me Happy!" or v.Name == "Dont Worry Im A Friendly Virus" or v.Name == "Script Made By Sonicthehedgehogxx" or v.Name == "I will show your password CENSORED" or v.Name == "MMMMMM PIZZZA UM NUM UM NUM" or string.find(nameLower, [[""''""''""]]) or v.Name == "RED ROBIN YUMMMMMMMM" then
					foundviruses = foundviruses + 1
					print(v.Name .. killfeeds[math.random(1, #killfeeds)])
					v:Destroy()
				end
			end
		end
		print("Total scans: "..timesscanned..". Total viruses found across all scans: "..foundviruses)
		wait(60) -- Waits 60 seconds between each termination.
	end
end))
