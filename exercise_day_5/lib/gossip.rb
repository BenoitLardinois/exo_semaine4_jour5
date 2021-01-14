require 'pry'
require 'csv'

class Gossip
  
  attr_reader :author, :content
  
  def initialize(author, content)
    @content = content
    @author = author
  end
  
  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end
  
  def self.all
    all_gossips = []
    
    CSV.open("./db/gossip.csv", "r").each do |line|
      temporary_gossip = Gossip.new(line[0], line[1])#permet de créer un objet gossip
      all_gossips << temporary_gossip#permet de rajouter le gossip provisoire au array
    end
    return all_gossips
  end
  
end
      
      
      
      
      
      
      
      
      
      
      
      