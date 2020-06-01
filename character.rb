class Character
	
	def creation()
		race["elf", "human", "dwarf"]
		lifepath ["guard", "soldier", "knight"]
		wpn["sword", "axe", "spear"]
		armr["light", "medium", "heavy"]

		puts "what is your name hero?"
		hero_name = $stdin.gets.chomp

		puts "Welcome #{hero_name}, what is you race?"
		print race
		hero_race = $stdin.gets.chomp
		if hero_race == "elf"
			#set stats
		elsif hero_race == "human"
			#set stats
		elsif hero_race == "dwarf"
			#set stats
		else 
			#error
		end

		puts "Great #{hero_name} of the #{hero_race} choose your weapon."
		print wpn[]
		hero_wpn = $stdin.gets.chomp
		if hero_wpn == "sword" || "axe" || "spear"
			#set her_wpn	
		else
			#error
		end

		puts "Great #{hero_name}, what was your life path"
		print lifepath[]
		hero_lifepath = $stdin.gets.chomp
		if hero_lifepath == "guard" || "soilder" || "knight"
			#set hero_lifepath
		else
			#error
		end

		puts "Great #{hero_name}, choose your armor."
		print armr[]
		hero_armr = $stdin.gets.chomp
		if hero_armr == "light" || "medium" || "heavy"
			#set hero_armr
		else
			#error
		end

		hero[hero_name, hero_race, hero_lifepath, hero_wpn, hero_armr]
	end

	def monster()
		race["goblin", "orc", "kobold"]
		wpn["sword", "axe", "spear"]
		armr["light", "medium", "heavy"]

		#code for rolling a random monster

		monster[monster_race, monster_wpn, monster_armr]
	end