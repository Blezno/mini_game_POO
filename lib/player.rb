class Player

  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
      puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage_received) 
      #entre parenthèses il faut nommer une variable pour faire la formule de calcule et non un integer directement, qui sera rentré via PRY
      @life_points -= damage_received 
      #-= permets d'écrire plus rapidement life_points = life_points - damage_received 
  
    if @life_points <= 0
        puts " Le joueur #{@name} a été tué dans ce combat sanglant ! "
    end

    return @life_points
  end

  def attacks(player_receiving_damage)
    puts "Le joueur #{self.name} attaque le joueur #{player_receiving_damage.name}! " 
    damage = compute_damage
    #self=celui qui lance la méthode ish
    puts "Il lui inflige #{damage} points de dommages avec son lancer de kunai !"
    player_receiving_damage.gets_damage(damage) 
    #on appelle la méthode gets.damage avec le point et on appelle entre () le resultat de notre dé.
  end

  def compute_damage
    return rand(1..6)
  end
end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~EXO 2 EN COURS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# class HumanPlayer < Player

#   def initialize(name)
#     attr_accessor :weapon_level
#     @life_points = 100
#     @weapon_level = 1
#   end

#   def show_state
#     puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level} ! "
#   end

#   def compute_damage
#     rand(1..6) * @weapon_level
#   end

#   def search_weapon
#     new_weapon = rand(1..6)
#     puts "Eh! Bravo tu as trouvé une nouvelle arme de niveau #{new_weapon} "

#     if new_weapon > weapon_level
#       puts "Eh beh mon petit cochon je vois qu'on se rince avec cette nouvelle arme plus puissante! "
#     else new_weapon < weapon_level
#       puts "Pfff c'est quoi ce kunai tout pété que tu nous a choppé ??? "
#   end

#   def search_health_pack
#       health_pack = rand(1..6)

#       if health_pack == 1
#         puts "Tu n'as rien trouvé... Faut aller chercher dans un autre buisson "
      
#       elsif health_pack == 6
#         puts "JACKPOT! tu as trouvé un pack de +80 points de vie ! "
#         if @life_points + 80 > 100
#           @life_points = 100
#         else @life_points = @life_points + 80
#         end

#       else puts "Bravo petit ninja! Tu as trouvé un pack de +50 points de vie ! "
#         if @life_points + 50 > 100
#           @life_points = 100
#         else @life_points = @life_points + 50
#         end
#       end

#   end
# end 
  
