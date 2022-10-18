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
    damage = compute_damage
    puts "Le joueur #{self.name} attaque le joueur #{player_receiving_damage.name}! " 
    #self=celui qui lance la méthode ish
    puts "Il lui inflige #{damage} points de dommages avec son lancer de kunai !"
    player_receiving_damage.gets_damage(damage) 
    #on appelle la méthode gets.damage avec le point et on appelle entre () le resultat de notre dé.
  end

  def compute_damage
    return rand(1..6)
  end
end


  
