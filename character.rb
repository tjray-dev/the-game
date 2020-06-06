class Character

  RACE     = { :elf   => { hit_points:  5,
                           armor_class: 1,
                           strength: 20 },
               :human => { hit_points: 5,
                           armor_class: 1,
                           strength: 20 },
               :dwarf => { hit_points: 5,
                           armor_class: 1,
                           strength: 20 } }


  LIFEPATH = ["guard", "soldier", "knight"].freeze
  WEAPON   = ["sword", "axe", "spear"].freeze
  ARMOR    = ["light", "medium", "heavy"].freeze

  attr_accessor :name, :race, :lifepath, :weapon, :armor

  def self.create()
    puts "what is your name hero?"
    hero_name = $stdin.gets.chomp

    print "Welcome #{hero_name}, what is you race? [#{RACE.keys.join(', ')}]"
    race = $stdin.gets.chomp
    # Check to see if it's a real race.
    if RACE.include?(race)
      character = Character.new(race.to_sym)
      character.name = hero_name
    else
      print "Please pick a valid race. [#{RACE.keys.join(', ')}}"
    end

    print "Great #{character.name}, what was your life path? [#{LIFEPATH.join(',')}]"
    lifepath = $stdin.gets.chomp
    if LIEFPATH.include?(lifepath)
      character.lifepath = lifepath
    else
      #error
    end

    print "Great #{hero_name}, choose your armor. [#{ARMOR.join(', ')}]"
    armor = $stdin.gets.chomp
    if ARMOR.include?(armor)
      character.armor = armor
    else
      #error
    end

    return character
    # hero[hero_name, hero_race, hero_lifepath, hero_wpn, hero_armr]
  end

  def initialize(race)
    @race        = race
    @strength    = Character::RACE[race][:strength]
    @hit_points  = Character::RACE[race][:hit_points]
    @armor_class = Character::RACE[race][:armor_class]
  end

  def monster()
    race["goblin", "orc", "kobold"]
    wpn["sword", "axe", "spear"]
    armr["light", "medium", "heavy"]

    #code for rolling a random monster

    monster[monster_race, monster_wpn, monster_armr]
  end
