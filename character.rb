class Character

	#hero[hero_name, str, dex, int, ac, dmg]
	race[
		"elf" => "str", "dex", "int"
		"human" => "str", "dex", "int"
		"dwarf" => "str", "dex", "int"
		]
	lifepath[
			"Guard" => "wpn", "armr"
			"Ranger" => "wpn", "armr"
			"knight" => "wpn", "armr"
			]
def creation( hero_name, hero_race, hero_lifepath)
#this walks a player through creating a hero
	puts "What is your hero's name"
	hero_name = $stdin.gets.chomp

	puts "Choose your race."
	print race[]
	hero_race = $stdin.gets.chomp
	#if/else loop for errors  

	puts "Choose your lifepath"
	print lifepath[]
	hero_lifepath = $stdin.gets.chomp
	#if/else loop for errors
#save these variables as a list for use later
	hero[hero_name, hero_race, hero_lifepath, str, dex, int, wpn, armr,]
end

def npc()
	#this makes random rolls to create npcs and enemies 
end


