require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


#binding.pry

player1 = Player.new("Naruto")
player2 = Player.new("Sasuke")


while player1.life_points >0 && player2.life_points >0

   puts "****************"
   puts "****************"
   puts "****************"
   puts "Ça gronde à Konoha! Voici l'état de nos ninjas : "
   player1.show_state
   player2.show_state

   puts "La tension est à couper au couteau, passons à la phase d'attaque : "

   puts "_________________"
   puts "_________________"
   puts "    F-I-G-H-T    "
   puts "_________________"
   puts "_________________"

   player2.attacks(player1)

   break if player2.life_points <= 0  

   
   player1.attacks(player2)

   


end
