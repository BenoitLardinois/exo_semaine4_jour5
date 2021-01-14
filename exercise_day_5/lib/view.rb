require 'pry'
require 'gossip'

class View
   
  def create_gossip
    puts "Votre nom ?"
    name = gets.chomp
    puts "Votre message ?"
    message = gets.chomp
    return params = {content: message, author: name}
  end
  
  def index_gossips(gossips)
    gossips.each do |gossip|
      puts "#{gossip.author},#{gossip.content}"
    end
  end
  
end

