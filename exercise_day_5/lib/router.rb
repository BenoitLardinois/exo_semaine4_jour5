require 'pry'
require 'controller'

class Router
#on veut qu'un "Router.new" lancé par app.rb, crée automatiquement une instance "@controller".
  def initialize
    @controller = Controller.new
  end
  
#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform
    
    puts "====Bienvenue dans 'The Gossip Project'===="
    
    while true
#on affiche le menu
      puts "Que veux tu faire ? Tape 1 et créé un potin, tape 2 pour afficher tous les potins, pour supprimer un potin tape 3 ou tape 4 et quitte cette application"
      choice = gets.chomp.to_i
      
      case choice
        when 1
          puts "Création d'un potin"
          @controller.create_gossip
        when 2
          puts "Affichages de tous les potins"
          @controller.index_gossips
        when 3
          puts "Quel potin veux tu supprimer ?"
          @controller.delete_gossips
        when 4
          puts "À bientôt!"
          break #ce "break" est la seul façon de sortir de la boucle while.
        else
          puts "Ce choix n'existe pas, merci de ressayer ;)"
      end
    end
  end
  
end